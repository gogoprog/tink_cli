package tink.cli;

using tink.CoreApi;

interface Prompt {
	function prompt(type:PromptType):Promise<String>;
}

abstract PromptType(PromptTypeBase) from PromptTypeBase to PromptTypeBase {
	@:from
	public static inline function ofString(v:String):PromptType
		return Simple(v);
}

enum PromptTypeBase {
	Simple(prompt:String);
	MultipleChoices(prompt:String, choices:Array<String>);
}