Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497E89099B5
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Jun 2024 21:41:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E27740588;
	Sat, 15 Jun 2024 19:41:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V_Nc0hcIVbH1; Sat, 15 Jun 2024 19:41:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED6F140593
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED6F140593;
	Sat, 15 Jun 2024 19:41:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 523711BF306
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2024 19:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F7A0607D7
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2024 19:41:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Viv9R7Qe5h6 for <devel@linuxdriverproject.org>;
 Sat, 15 Jun 2024 19:41:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.8.122;
 helo=eur04-vi1-obe.outbound.protection.outlook.com;
 envelope-from=janethbriones@uadec.edu.mx; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1EA47607D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1EA47607D6
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04on2122.outbound.protection.outlook.com [40.107.8.122])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1EA47607D6
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2024 19:41:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F/wbGgaHyHPHDtNSv9o0A/BidMTPQZoKLAnKC9Uil5UgUb0kkZ9DqO7XbLC7roEzyUTvYJwUd0Q1ZTwAQM76IcA+SCL64W1SBRbz7RGBJXHRdLDGFcqqL2Q1ja0VIVF6dzN9owBtpXqY1b89wx33wK02fmgCuQvzuFTZ1m/bD58BLd9UB3OGRrcLCrIBNxp2kjxyp3+Vj2LNoM7SFCHz9dBBADcCzrV1KwICibWctO+PKCts+6P/UtU02xyjiewdGDsP0rDXTh9AgTlmQoW7R/YLs7cpPKwzQRmPj0jK4Luq0d4hnb+CVc0FlomoNKTZvZPabhZrglkqG+6aX6iBxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/+UKu0mxFtISXgWdOXD/iB8g9aWe1HfZ4vEkJFKGvkU=;
 b=M4p1KjaHSSA4Y8FuI86fPNkDMkiGjPOaTtiO2tlYh+KL+hgdeIsbTWW/S0bI4hK7wkLAAJM8v9n4O5a3HMzVpe61e41mMOqtySqvmh3D+GvigomylYITVZWtbv9TFUhY+xG7wjCClbwTMJ0m16U83CFopaI0uqUcXJlgmmSrD+05unBKeuTePfNgjoJNXfVQ723VufcZlT41YPh071+CMY5hqFM6JYKbO/N4hHHuJF3CEhcxMLg4nGqnVdtGy2G92qA+L/CO9OBF4dM81dB6qYvpBpKqX5NBYJ9QoxD8uff/xgYhwsReiTcFC74iE4wfSTYxEh9THIqZext0vL+iHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uadec.edu.mx; dmarc=pass action=none header.from=uadec.edu.mx;
 dkim=pass header.d=uadec.edu.mx; arc=none
Received: from VI1PR01MB4448.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:ae::24) by VI0PR01MB11290.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:26b::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.27; Sat, 15 Jun
 2024 19:41:28 +0000
Received: from VI1PR01MB4448.eurprd01.prod.exchangelabs.com
 ([fe80::74c4:faac:cc91:a362]) by VI1PR01MB4448.eurprd01.prod.exchangelabs.com
 ([fe80::74c4:faac:cc91:a362%6]) with mapi id 15.20.7677.024; Sat, 15 Jun 2024
 19:41:28 +0000
From: JANETH GUADALUPE BRIONES ESQUIVEL <janethbriones@uadec.edu.mx>
To: JANETH GUADALUPE BRIONES ESQUIVEL <janethbriones@uadec.edu.mx>
Subject: =?utf-8?B?UmU6IG7Dum1lcm8gZGUgcGVybWlzbyA0ODM4NTgg?=
Thread-Topic: =?utf-8?B?bsO6bWVybyBkZSBwZXJtaXNvIDQ4Mzg1OCA=?=
Thread-Index: AQHav1rZSm5EF8w6g0GIpMRtU1x8AbHJOVCA
Date: Sat, 15 Jun 2024 19:41:28 +0000
Message-ID: <5A0A9F6E-9EA8-425D-8F1B-516A6D7E0A97@uadec.edu.mx>
References: <FB7906F1-F8FF-4C4F-AB8E-E4F50A9F9730@uadec.edu.mx>
In-Reply-To: <FB7906F1-F8FF-4C4F-AB8E-E4F50A9F9730@uadec.edu.mx>
Accept-Language: es-MX, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR01MB4448:EE_|VI0PR01MB11290:EE_
x-ms-office365-filtering-correlation-id: 8891a393-b856-4432-d7b3-08dc8d732670
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230037|7416011|376011|1800799021|41320700010|366013|38070700015; 
x-microsoft-antispam-message-info: =?utf-8?B?TzZ1V040eXhJSVBIbmI5QW50UFBrTzZiL1V2OHFEYnEzcitXVGVnM3pGWlRa?=
 =?utf-8?B?NHA3NHNIdnI5VGlkbVEyRzA4NXQxM0xrSjk4d25BWWNZbWQ5K3VxUitlVW9K?=
 =?utf-8?B?RFc1ajVIQ3BCeS9CNkczZUZHMjJCUTMvRHRPLzIyWS9UZFlvU1U5bTNhVElL?=
 =?utf-8?B?YXEzQkx4N01PRmNSRFFOcFdlUlJJcXBCT2V1N2dFUWJVUVYwZ0d5VU5tMlpn?=
 =?utf-8?B?RzlsZlhSaVAwSHI1RDdPS012a1pQNVBqcEpkSEF6dncwZm5SOEVBQlJjazRW?=
 =?utf-8?B?QVE3LzZYeVZRb01uRWs3YTFSZUFHZldDNWljRE9aZEtpcHJ1MU9NeW41R0NT?=
 =?utf-8?B?dDFla1ViSE1JaDBLYUQ1VnY1cXAvRnVCZS9DSjRFY2ZZNEFuaGFCdkcvV1hu?=
 =?utf-8?B?amdnSWNzdHluMVk4eHpxUEE5eFlPSzJtblVURGhBcmpoM2wvalhXUzlkbWlY?=
 =?utf-8?B?UFQ5K1JrVGY5OGllSmdJeDJJZTlYMkVCZkorZDNHcVQ4c045anE3Y2hQcDVU?=
 =?utf-8?B?S05rK0pWWnRPcmM4cUZSU0MwR1BnL3NRWUJSbkgreGJtZDdMcG5HclYxbDB3?=
 =?utf-8?B?M3ZVSHduYXptSStCRzA5UnRNRzMwTWIzaktKOEozaTN2U2ZhbTFBZU9rWkV5?=
 =?utf-8?B?amJVaTlYdjd4eXF3ZTg5cXEzYm0yU1kzQUh0L0t5SFcxSmgxMFhBeEdad1pL?=
 =?utf-8?B?c0FXTS92bFE1RGJnL0dIeWRxQ3loeXZLVXhsL3hrY1BKOFNFS3BrQ0lGcGIx?=
 =?utf-8?B?M05PbktiUjA4L1ZhdEV1MWJKQUt0elFBbXV4Qy8zczE3UzhXajJTNjQvbEdT?=
 =?utf-8?B?ZUM2V2JqZUtlWXVLcjRPUEgxZW4ycHp1QnU3OHYyYW9VV3EvL0h5ZzRha2pC?=
 =?utf-8?B?eXl2THFyT3RrUUhNdTBzZmVKQ0p0djJ1T084Q1FMTld4Rjkzd2plYWkzOHVn?=
 =?utf-8?B?UE1WS0Zob0FxTUFSckNKNDFvM3hUOXNPMlFtWmp2Y2dTWVg5anJ4ZnI5b2w0?=
 =?utf-8?B?blBtbWFONjVOTERsdkpTbFk0ODVFZ1JwRXlvZmNWdzY5TFJVV3Q4cFk5Rzgv?=
 =?utf-8?B?OXRBbGlsQmVKc2puazYyRVBDRUlJL2NXN0ViQ0ptUGtPMEFQTm96dExZVFFk?=
 =?utf-8?B?K2cvLzRKYWM5eFZRV0FuMHd1Z3BNL0NVRzFmdzd1TW9Uc21hUU42STBkTzdo?=
 =?utf-8?B?TjkwNTJKUHlKZWhMZlBTSFNSN3A4djMvRVV0Z3lLaEVMQndPL2pHUnJLUU15?=
 =?utf-8?B?UmQ3ZDNrbDZ5M2VMaU43bjlQOUIxTTRRcjBNdHdBSmo2c1JWYUFkeEhmMWdF?=
 =?utf-8?B?aGRacnVuYUNiMEFlZUFneUNMaVVRNzhtaGw4UWNSRHBLc1RzbmNoT0MxUkJQ?=
 =?utf-8?B?SEJWQy9EcmxaYkNON0xyM2ovTm51ZnRqcVJmYzQ1RWVrenFta0l3NVkvUXlu?=
 =?utf-8?B?a1VCcWwxQklGSXVuSU1UZDlCbjJMOUJLMjVHR0ZLRi94OFByNE5wdVZNZSt1?=
 =?utf-8?B?YjBxUS8rUnlaTDB0OVc0M1h0TlE4M2hrSkdSRnArTHFwdnlEZnFIeGZhTEJt?=
 =?utf-8?B?UnBKWHNUOW9mTUVKQURocGV3d0JBbUN5TFJLTzBYK3I0dmRFZmQvQWxMOFBw?=
 =?utf-8?B?NGpCRGZaMTRxb1pwclc3S0IxSjE1K0FyL1VYUm1XV3FFYnE5azB4NERSTk5u?=
 =?utf-8?B?UDZWQTIvNjV5V1FLVFgxYUdsYmhqUjRQRlJ4V2p0Nm9VY0hZRU1GblhYRTRJ?=
 =?utf-8?B?NXBOTlpQL09pTGhkOWZ1UU9SQWczRnhUNWx1Sk92MGs1ZHZlemswVmZFYnZy?=
 =?utf-8?Q?HEC/+WXCkQCGF0cmWHKNLiMPX1nbGJerlEOMc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:es; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR01MB4448.eurprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE;
 SFS:(13230037)(7416011)(376011)(1800799021)(41320700010)(366013)(38070700015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VTFHUldWbDd3ZXUzV2FNUnpWLzhkaGRwSnd1Y2hrV0xxL1BUWnNsemRYY3RV?=
 =?utf-8?B?T1VnM0cvTTVJZjZvSTdCSkxIK2N5R2xnOTA4NmIrMWdCSTNQUC84NVhXTjFH?=
 =?utf-8?B?TkswZ1ZVNDVyak16algzUWh2ek0yNkZHcEM5OTJVYTlpVm95WVNCckQxZ25G?=
 =?utf-8?B?TzlzcjRLeDJ4RSs2ZnM3Slo1WTh3Zm1zNU1Rc0JLMklEQXl5L09CMDZUYWQz?=
 =?utf-8?B?VEw0UUFIRjV1WVpNTEpwYlNuQ1Z0cmVkbkxra3NUT0pLbTZUTzhtK1pQOUdV?=
 =?utf-8?B?SmY1emRKWlpuTmxzUWdvOFhIYS9ZUi9ZRVI1WDJuZm9DOU5hSFY0b1lCek9H?=
 =?utf-8?B?SnZTMFlIM0J1V2hRbHhlVklGUEgvZTJyNmxnVkpVRk1aUXZFRFdVVHpHQUJD?=
 =?utf-8?B?VHduNzBhK0JFQncrTFhZNGhxNVhYTzNLdythK2o3M2JqbVZsdHdydXRyRkUy?=
 =?utf-8?B?dk0wdDV5T3JQV21yd1UwYWV0dEgvMG1RWlJmMEN2Um5YUGNaekZJV0FURVlh?=
 =?utf-8?B?bUh6WW0vM0FOMlhGT3ZLYnM4RWcyR1hMcmJLUEJjcmN2VGpwd20rOFFDR1ov?=
 =?utf-8?B?bkJwaUdBeE5qYm9PZUVqd0E3VDVnSlBzaVkxWlRxdXJJd1QxelR6a2w2Z3A3?=
 =?utf-8?B?cTMyZ1FhWC8zcnRvUlkyUERhUkF2NE1CWHk3STFCbEcrQjgwaGlWUE1RcTNV?=
 =?utf-8?B?TE9oWUU0VWwxbnJZWHdKV3NKWDN2b1ZrT3pGNVBlUlR1dTZNVXBMbXQ0Ykcy?=
 =?utf-8?B?SWVPbVlGa0dhZ1ppdEpDU0tBbXRvRG5GeUl4MlFxUk5NL1A5SThCK2JBRGJ5?=
 =?utf-8?B?U3U5VXR1SnNqS0VpMmYwUUhWalFaWmI2V25id0FQR3hMK3ZnaytQbm5HWlI5?=
 =?utf-8?B?UjVOODVSaDhBdWwrTmx1U0k3bEVOOG8yYkR6UWFUYi8rb0JPOENzU21Fa3V3?=
 =?utf-8?B?TTZrbkw5a2o2dHg4OEZNbGFJR3VpWHRWcUFFN0k3SlVWS2xJbVdYdkxaeWM2?=
 =?utf-8?B?RmxnaUpQd3FzdjZvZ3kvVzNabCtHR1pQT0VtQ25ZajFlMWFWd2p0SGFUVElh?=
 =?utf-8?B?SVJFbTc2Ykd0TENUM2pQZG9RV0ZCTTRpWTJUalZxZ0VEUWRtc05qT3BjdFpI?=
 =?utf-8?B?UDRNaHJNOGN5WDlKNW1EMkU3YmZ2ejgrSXlDWkFEbDRnMWMwL25LRTlCVXNE?=
 =?utf-8?B?MUQ3VjhKcEJLOWZuVVlFS1hzTVlUNmw1dTMwVTZqS0JVY01jNmNUdUZTK0lk?=
 =?utf-8?B?Uzgra2QrZlk2Tko0WVJlMG1kY3k4bXBIZTdxZE1vdnZZTE5pcTFleWJFVGlp?=
 =?utf-8?B?RUFRT0JSZTVDR3d5SWFZZUFSVkFaMnNTTUh6VmI1aksvQWFHUldEbnJTSU82?=
 =?utf-8?B?aHVBSEx4aXgwUVRzdzVWT1hzSzB6ZVZRRHBJZzJrcFZKSzBwcGRPRU04bFZ5?=
 =?utf-8?B?RjcxZmUyTkdFU2I0YUhrd1c3WUI1MlZsaU15M2FIZG5yK3FOdEZuM1Vpa3dX?=
 =?utf-8?B?TUErcGQ2YnRiVDEyZExtcTl2UlR6OW1qMDQweTRKSmNzdld2MTBjSEVRcXpE?=
 =?utf-8?B?OHlCN0JxZVRRaVdSZ2RsOXRJNUVQaXBVbTJOc3EyanQ5dHpHc2Z1V2VldzZ4?=
 =?utf-8?B?M2hBeklsN3JEb1FsbWhjT3hjWGdZMUQ0WTZ4YlpQNjRCcndmdTNkS2tMN2NX?=
 =?utf-8?B?czc3RWpxMytmcW5YeDlPZGdVRGR4eTlsemRpVHdSS2VPK2pmYldPVW93dDRq?=
 =?utf-8?B?bm9GWWQ5L2RDMWl0RGhrb3UwVHV3Rk41MnpyQ2xSb3BSVzhGRnpKMnFVYnBX?=
 =?utf-8?B?TEFDY2plenVnc0ZVVlFWaFMvZmdra2Raa0tKN254QUVLcVN0TElIT1Iwb0pL?=
 =?utf-8?B?M1NWbEJ5L3RhdUc2UDgyWjNGQTVKdENBTkhnbktGZ0h5NEhNR0ZSNzdJUmNk?=
 =?utf-8?B?TXlRNElDdGtOazNlb3lxMmVJUTJqU29PRWhETkx5Z21pbU1lUXJISUVJR2pO?=
 =?utf-8?B?d2wrZHhCbEErbzB0aDM3ZFZncDQ4VXhiSy9TWWIyaGxHUnNoKzQ2bWd3eVNa?=
 =?utf-8?B?VUwrUXNqSFRYcHU1cmNYTDJrbUFocXVIdDB3eUUxNndtc3VZaVZmenVnVDcv?=
 =?utf-8?B?bmFGenhFaGo1bXhPdU9HVW14dDY3TE5YcnVmNDU0TDJPWUpoRmR5dVZVZVZ3?=
 =?utf-8?B?a1E9PQ==?=
Content-ID: <357A12342325E8429755F6907BC746A0@eurprd01.prod.exchangelabs.com>
MIME-Version: 1.0
X-OriginatorOrg: uadec.edu.mx
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR01MB4448.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8891a393-b856-4432-d7b3-08dc8d732670
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2024 19:41:28.4841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7240c382-77f3-42ea-9576-37097db362d0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jMDyrkYYcaYw/RuXXPokjEg3TsybYswbJsFqfSPQ4auk8HRW2MVrsZLpQRmAwOoPOpuw5CaVQqUTSMmHY+iur7u3V+QLXqyX53cDBaDc8I0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR01MB11290
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=uadec.edu.mx; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/+UKu0mxFtISXgWdOXD/iB8g9aWe1HfZ4vEkJFKGvkU=;
 b=DVYKJblrii5clktKwSztD+BpFZdLoTCBLxVezrSwaTLVRcNDohmVdQvd0W5CY73fbGaEmL/ZBMJxje7wUA/Su7QNjDqyZJ4b0IQBsW2T0R8Z4+6NMvV/ufSTDRmVY6nTQklc6lGRb/h5UaiF9Lp4Eva7hIAY9RZBg89S/b2uTd4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=uadec.edu.mx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=uadec.edu.mx;
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

DQoNCj4gIA0KPiBTdSBwYWdvIGRlIGRlc2Fycm9sbG8gdmVyZGUgeWEgZXN0w6EgZGlzcG9uaWJs
ZS4gZW52aWFyIHBlcm1pc28gbsO6bWVybyA0ODM4NTggZW52aWFyIHVuIGNvcnJlbyBlbGVjdHLD
s25pY28geyAgbXlncmVlbkBzdHJlYmVyMjQuZGUgIH0gIHJlY2xhbW8uDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
