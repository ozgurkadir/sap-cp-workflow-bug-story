{
	"contents": {
		"c3d531b8-42ae-42ba-9227-a50d830c31ee": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "closeProject",
			"subject": "closeProject",
			"name": "closeProject",
			"documentation": "Close Project",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"863c9b9c-bf86-43fe-b1d6-aedb277cc73c": {
					"name": "userDecision"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"a230b90f-1e03-491e-adc4-9fe795dedc11": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "863c9b9c-bf86-43fe-b1d6-aedb277cc73c"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"8cfaad7c-6a2b-456a-bfc5-eeacee130f6f": {},
				"752692dc-31b0-4ecd-99e2-9c504c46200d": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 340,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,117 226,117",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "8cfaad7c-6a2b-456a-bfc5-eeacee130f6f",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1
		},
		"863c9b9c-bf86-43fe-b1d6-aedb277cc73c": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve to close project ${context.Projects.projectName}",
			"description": "Manager approves that project steps completed and closes the project",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/closeProject/userDecisionForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "userdecisionform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "userDecision"
		},
		"8cfaad7c-6a2b-456a-bfc5-eeacee130f6f": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 176,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "863c9b9c-bf86-43fe-b1d6-aedb277cc73c"
		},
		"a230b90f-1e03-491e-adc4-9fe795dedc11": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "863c9b9c-bf86-43fe-b1d6-aedb277cc73c",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"752692dc-31b0-4ecd-99e2-9c504c46200d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "226,117.75 357.5,117.75",
			"sourceSymbol": "8cfaad7c-6a2b-456a-bfc5-eeacee130f6f",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "a230b90f-1e03-491e-adc4-9fe795dedc11"
		}
	}
}