Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B49B340FB86
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Sep 2021 17:14:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A9F283E56;
	Fri, 17 Sep 2021 15:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JoghlM2XR-H8; Fri, 17 Sep 2021 15:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9673C827AA;
	Fri, 17 Sep 2021 15:14:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 87D621BF9D1
 for <devel@linuxdriverproject.org>; Fri, 17 Sep 2021 15:14:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 842898291D
 for <devel@linuxdriverproject.org>; Fri, 17 Sep 2021 15:14:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YwEp2QH7Jfb6 for <devel@linuxdriverproject.org>;
 Fri, 17 Sep 2021 15:14:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam08on2070.outbound.protection.outlook.com [40.107.102.70])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 37379827AA
 for <devel@driverdev.osuosl.org>; Fri, 17 Sep 2021 15:14:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OILbLsGraYgVRUoIHA5fK1gZXJEsVoo0iT3D+n7NEiEAe348MJj4ctiFte0lztCJuXGwI5QIaAuw7XaNG8QAu9thOubXS7wOcDwjpVHIKRbY6myx3ejBuAryVpD7h+A0DZBZAMNdMa/OTzAW29+QjIkSFZ58I/1/iAr43uqwS2AjZ42ZiPdUfoeHezngs4BFWsjnfTDfOuvYzyj/jexEXGKN5Ahc/ZIZbv86Crgj9HSIJogXQTko2TAFIxVn1E4Ny6LbcyIEm9ozVVKxCoSq9lMklKvZNdMi+8JzidHDKAElHLIiw4z8+Poaw2QG/sKkktxuIth0ZsVvMjdICyam7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=Ozeh0ECxWubxlzl1+oE2TLBcQ2CyJRVgk0Y84zj3Y2Y=;
 b=CTkTjSoRL8zpChO1jZ2GqP0IpNEYZDiV9zQbQ4Cllc3DL0OBV85Wevs/ND9LH5YW7nktFAdSLITcrqiepGFLUdPv5kPzBaiwDeDR2ywnX+q3404UcXBP2HLVIfxCjpfizM4ftVemdtvgy6DYDG3FOBu4NarAhpnZVzC61rWuBPX/VhFlTu2TcuDyFmdD3z0hMTsegOwML/c3XOSlxDHjw6oEJ9i8EWt/2yBHU8VFJw3el21z3NAPOUAgHQg3GfQB5x3ZFspgHQ1f279iFph6W11Ha1/raQgsYY2wkJP8b792LA3ckeIUGHUTgQkIQWjPsZTnmO9xuewDbrYVZ0IfTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ozeh0ECxWubxlzl1+oE2TLBcQ2CyJRVgk0Y84zj3Y2Y=;
 b=frf6sg+ZOfy+qlcvRxUim29Pqtt8ywONJNgcCqkYNAeYixdGVPgV+IElzsHgZT1ieJxnkIJSGHMS0eCkG6P7uTq4fUVDskvStyAsk0LAv1C8Vqo3SilGTv8+58XldPvpy8vY+ZdMz+B/b67IHPSkJliYrta4e+lxBATA+ukz6Pk=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4574.namprd11.prod.outlook.com (2603:10b6:806:71::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Fri, 17 Sep
 2021 15:14:18 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Fri, 17 Sep 2021
 15:14:17 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v6 00/24] wfx: get out from the staging area
Date: Fri, 17 Sep 2021 17:13:36 +0200
Message-Id: <20210917151401.2274772-1-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
X-ClientProxiedBy: SA9PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:806:20::34) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
Received: from pc-42.silabs.com (2a01:e34:ecb5:66a0:9876:e1d7:65be:d294) by
 SA9PR03CA0029.namprd03.prod.outlook.com (2603:10b6:806:20::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Fri, 17 Sep 2021 15:14:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aa07ef1b-006b-4650-be1b-08d979edd128
X-MS-TrafficTypeDiagnostic: SA0PR11MB4574:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB45747837511FFD605311C78993DD9@SA0PR11MB4574.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6KmBC9Vdql2/UywRTp42BXfLS7JyiAv/OhbahXYhEMOY2IsTRueUl6fs9f59gp27RR8U2bhoWrShGNSEDJeRy6C2EMYdlNRrhAxDCd7nBREWCzw8hureYzkfiAsXSd/B0FYXNsyCt7E3X28mnM4CXArT3TF1daiw3bnQisCvSPkNmB4aKsARwZyrzqCpbVN4C3MBO6dCEWWGg7XnCHG6xKJmCUGfKwDUHWQkbzGFMuF65W5KfsvZmET/T194yMr21yayJSKWyWlclO/pmaQz2EYcRa+ESa4O03118vn3MEOs5JKsLLpq00NoO11w6yeWl7wbRTaT6DpSsCeU5kPaGjXa/5km7FUEFHrdnucaP9GajIKuGx4LufEs/4zVS5s+9TT6zWT1I48qL5SN0Wob5sBprbLWNsJA4+YVdclf7xp0+2SgrkZugUJ4li8qS4FOce6xoxDGtDY4vHWV/zLPtAUkK9gUIUk77x1h5hqe2xtD+blmvxkBR2CqUNOnm2oh/Z/NbPVxjIsTS7WMCjU0npVMtXEYV8Z67NSFYNxvB8Es4OnrVftJhNiUN6Igh3XkT0Hc8QH230E05o0RhBpmmL0HoNKj/GaORoMICYMR2eXPGP16NIQL7g9BC8ylz03iQLCqzHxbaUDupM4wbLSeYs9ZeYSipcQGVoKwPWEKLA1blKY4zbQG9IVB8VWS/fLjX8FkImh5h789LXF1+8qqrl8Mo824NYm9yvoFLc9WP4U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(376002)(39850400004)(396003)(366004)(52116002)(6666004)(38100700002)(8936002)(7696005)(966005)(478600001)(6486002)(186003)(7416002)(86362001)(5660300002)(54906003)(66556008)(66476007)(4326008)(1076003)(66946007)(2616005)(107886003)(6916009)(316002)(36756003)(8676002)(66574015)(2906002)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T3JLODlUb3pRUjNzY2ZoM0NxZFRTY3p0SW5FTHNGM05SS0ZVOVBsd3NweTlq?=
 =?utf-8?B?V0F3Z0Y3Z1NRNmxHU1lxK1lnUTVqa0Mxem1XL0hzSVFnaEVRSjVRdElZUnZ0?=
 =?utf-8?B?V1lmRmV4c3poSStTK2xBOHFQeXg3TlFUUFVxWExYdUkxK0lZaGZ2dEx0UVBB?=
 =?utf-8?B?eEZSY2VlZE1yZVoyK0RJR3pBMVpNTXFGcFlmWk14RmhORWZyaDYxeUpuOWxO?=
 =?utf-8?B?Yll1NGZVdlE3M1g3NnBsS1BpZXEyMU5WZ0pQQmI4aUNBMmxDbG54SzM3cURs?=
 =?utf-8?B?TEFCVmxJZjg2TGVVcGQyT1BocHdXVDFKK3J2dTlHeGR1cUgyeWdEZlprcGdJ?=
 =?utf-8?B?TGRWNXA4YkhRRjVIREFoQTlpRjVtTzM2TFZHRlQ0VDRUN0FUbWlXZGF4aEhj?=
 =?utf-8?B?Ky9rLzRXRjFBM2lTbDJUWi9DQlBPaXlWWXdrWHU5MzFzR1hEYk5CdDFmc2p3?=
 =?utf-8?B?WUhyNDg0Zk9xa0ZlZ05tRUIyd3ByTnJoTkFFYmFkRStIcXhWZE5PekY3MEZE?=
 =?utf-8?B?dVhabWdHNVBsUVpFMytveFNvM0Z0ZU9wUUJhQ0tWSkgycVlUaTVFVGpkWXhL?=
 =?utf-8?B?bTZlT1I2Q1lYWUNKcmJJSzUwZzdRcURMekZmWVdndUJCdjBUWkJsaDNkYURT?=
 =?utf-8?B?R0N4K0xIRUdhaDEyZjNKMkc2cVZoY3grN25KZS9JSWtGb0FRVzE0UUxSQlJj?=
 =?utf-8?B?Ym9Gcll4a0xRU2dPVVFLeHlJcHJ2c2VHVGFQKzkwSEZGWDhFSzhxRjFVQmc3?=
 =?utf-8?B?YlVGSUVuZ3Fpa0pjTG1hNzlOODJvRmJSa1hZNjdSUTFvMXJXdERMRXNENlg5?=
 =?utf-8?B?am5RL3RMeTlhVjdzMk5mSExqcWNOSU1UL2RVL0J4MTFLQldkRFA2bGdwREs2?=
 =?utf-8?B?cVBrWlovbGdBMmNWcUU5MFNvZFNOZURQa2lrV1ZGYnlxQkJtYW10d0pvR0th?=
 =?utf-8?B?K2Jabm5tOXY1QXplMFZFakJOTUN4ZXdYcm16eHk2S1Y1WGIrR3RWcW9xRE5l?=
 =?utf-8?B?RWt3S0U5eXdFL2hpQS9iYU00MmRFRzdyNHpwSzZmVjJUSU9LcWhNZjdjS1pR?=
 =?utf-8?B?VFRtWlZabXRXV213UTdzT0IzREUvUlNuZkZvenNnbnBMVVJMNzlmNTBBNE1v?=
 =?utf-8?B?THB3elhFenQvWGlrU3Q3MG1PWEc4QTNONUpNRGFKVzVsalBSVmN5OXp3U0Zm?=
 =?utf-8?B?SWI5alJHdnAxcUVER01jbDA0U1diemNTenhtakdxeE9uOTBrVFR1akNPem5x?=
 =?utf-8?B?RGFUKzBodjRsRDRLQ3poOFBxcUVJRk8rZm1obzl0UkR1VGJtK1hsYlhLcnVI?=
 =?utf-8?B?SFZtbUZIaGZWb0ZxaXhycE12UDBRNkFpK2krL1NiRC9USDdVdkNGdFRjV0xE?=
 =?utf-8?B?S2VucUFRVFo0NzRELzc4VlQvd0xSUjdVU2RPQkxyeGljMS9oemhXczVOOEkz?=
 =?utf-8?B?MWtpY1hFcFZob2EyLysvZ0llUVo1VnRSVUdMa3ZmQlBhS1Y2MWRqL3hYYkpi?=
 =?utf-8?B?NXk4V2xhMGR1clBjdjk0NjRkREZ1RHFxL0hpdHhMdGt4TnZFMWlwWkRJYUlW?=
 =?utf-8?B?UGNhMFlJNkFRd0d2MlZKV3V2TEVnN3dndVZUUTFzUzRyZUU4eDM3Qk1QUW9F?=
 =?utf-8?B?OVp3a3pla0pMVytEQjFEcGxoeEF3TUg3TW8vQ2czd0V3WDBmL1hsTXY2elRD?=
 =?utf-8?B?N0xRMThjeElkYXV4TkFNVmpzUFFhanNJTUN3NS81YVVxMzJ6OGVkT0dWaHYz?=
 =?utf-8?B?VmwrYzZROWZySUJPV1B1VGtPdWtFbE5jUkw5ZEdNekJPL2FiOXpkRTB6RFJ0?=
 =?utf-8?B?dDR2b1pERnJzWCs5Q1VkWC9FSmdDcVB4VlEyTGlLaVpzMmFISE1lc0VNN0x5?=
 =?utf-8?Q?duGvSyvkL2fGW?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa07ef1b-006b-4650-be1b-08d979edd128
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 15:14:17.7821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XNVm0MnKL23TK7EHAXyLqiPOkv6r5/MZJwdDnj81k2h8l3Y/JQ7dG9d6FcSsEE61uvC7ezff/8DJ84OHztz+/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4574
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKSGVs
bG8sCgpJIHRoaW5rIHRoZSB3ZnggZHJpdmVyIGlzIG5vdyBtYXR1cmUgZW5vdWdoIHRvIGJlIGFj
Y2VwdGVkIGluIHRoZQpkcml2ZXJzL25ldC93aXJlbGVzcyBkaXJlY3RvcnkuCgpUaGUgZmlybXdh
cmUgaXMgbm93IGEgcGFydCBvZiB0aGUgbGludXgtZmlybXdhcmUgcmVwb3NpdG9yeSBzaW5jZSBy
ZWxhc2UKMjAyMTAzMTVbMV0uIEl0IGhhZCB0YWtlbiBhIGJpdCBvZiB0aW1lIGJlY2F1c2UgSSBo
YXZlIHdvcmtlZCB3aXRoIHRoZSBsZWdhbApkZXBhcnRtZW50IHRvIHNpbXBsaWZ5IHRoZSByZWRp
c3RyaWJ1dGlvbiB0ZXJtcyBvZiB0aGUgZmlybXdhcmUuCgpbMV06IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xpbnV4LWZpcm13YXJlLzI4MzMzNTQuZ1h2VmZhQzRJN0BwYy00Mi8KCgpBcyByZXF1
ZXN0ZWQgYnkgS2FsbGVbMl0sIEkgc2VuZCBvbmUgZmlsZSBwZXIgcGF0Y2guIEF0IHRoZSBlbmQs
IGFsbCB0aGUKcGF0Y2hlcyAob3IgYXQgbGVhc3QgdGhlIHBhdGNoZXMgMyB0byAyNCkgd2lsbCBi
ZSBzcXVhc2hlZCAodGhlcmVmb3JlLCBJCmRpZG4ndCBib3RoZXIgdG8gd3JpdGUgcmVhbCBjb21t
aXQgbWVzc2FnZXMpLgoKWzJdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzg3ZnQ2cDJu
MGguZnNmQGNvZGVhdXJvcmEub3JnLwoKSGVyZSBpcyBhIGRpYWdyYW0gb2YgdGhlIGdsb2JhbCBh
cmNoaXRlY3R1cmUgdGhhdCBtYXkgaGVscCB0byB1bmRlcnN0YW5kCnRoZSBjb2RlOgoKICAgICwt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0uCiAgICB8ICAgICAgICAgICAgICAg
IG1hYzgwMjExICAgICAgICAgICAgfAogICAgYC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLScKICAgICwtLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0uCiAgICB8
ICAgIHN0YSAgICAgfCAgICAgICAgICAgfCAgICAgICAgICAgfAogICAgfCAgICBzY2FuICAgIHwg
ICAgICAgICAgIHwgICAgICAgICAgIHwKICAgIHwgICAgbWFpbiAgICB8ICAgICAgICAgICB8ICAg
ICAgICAgICB8CiAgICArLS0tLS0tLS0tLS0tKyAgZGF0YV90eCAgfCAgICAgICAgICAgfAogICAg
fCAgICBrZXkgICAgIHwgICAgICAgICAgIHwgIGRhdGFfcnggIHwKICAgIHwgaGlmX3R4X21pYiB8
ICAgcXVldWUgICB8ICAgICAgICAgICB8CiAgICB8ICAgaGlmX3R4ICAgfCAgICAgICAgICAgfCAg
ICAgICAgICAgfAogICAgfCAgIGhpZl9yeCAgIHwgICAgICAgICAgIHwgICAgICAgICAgIHwKICAg
IHwgIGhpZl9hcGlfKiB8ICAgICAgICAgICB8ICAgICAgICAgICB8CiAgICArLS0tLS0tLS0tLS0t
Ky0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tKy0tLS0tLS0tLgogICAgfCAgICAgICAgICAgICAgICAg
IGJoICAgICAgICAgICAgICAgIHwgIGZ3aW8gIHwKICAgICstLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0rCiAgICB8ICAgICAgICAgICAgICAgICAgICAgaHdpbyAg
ICAgICAgICAgICAgICAgICAgfAogICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLSsKICAgIHwgICAgICAgICAgICAgICAgICAgYnVzX3NkaW8gICAgICAgICAg
ICAgICAgICB8CiAgICB8ICAgICAgICAgICAgICAgICAgIGJ1c19zcGkgICAgICAgICAgICAgICAg
ICAgfAogICAgYC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLScK
ICAgICwtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0uCiAgICB8
ICAgICAgICAgICAgICAgICAgc3BpIC8gc2RpbyAgICAgICAgICAgICAgICAgfAogICAgYC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLScKClJvdWdobHksIEkgaGF2
ZSBzZW50IHRoZSBmaWxlcyBmcm9tIHRoZSBib3R0b20gdG8gdGhlIHRvcC4KCgp2NjoKICAtIFJl
YmFzZSBvbiBsYXN0IHN0YWdpbmctbmV4dCAocm91Z2h0bHkgc29tZXdoZXJlIGFmdGVyIHRoZSA1
LjE1CiAgICBtZXJnZSB3aW5kb3cpLiBTbywgdGhpcyBzZXJpZXMgaW5jbHVkZSB0aGUgcGF0Y2hl
cyBmcm9tOgogICAgICBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyMTA5MTMxMzAy
MDMuMTkwMzYyMi0xLUplcm9tZS5Qb3VpbGxlckBzaWxhYnMuY29tLwoKdjU6CiAgLSBBZGQgcmVm
ZXJlbmNlIHRvIHRoZSBQUiB0byBsaW51eC1maXJtd2FyZSBpbiB0aGUgY292ZXIgbGV0dGVyCiAg
LSBSZWJhc2Ugb24gbGFzdCBzdGFnaW5nIHRyZWUgKHRoYXQgbWFpbmx5IGluY2x1ZGUgY29tbWl0
IDZlZmVkMGE2OTc5NAogICAgInN0YWdpbmc6IHdmeDogZml4IHBvc3NpYmxlIHBhbmljIHdpdGgg
cmUtcXVldWVkIGZyYW1lcyIgYW5kIGEgZmV3CiAgICBjb3NtZXRpY3MgY2hhbmdlcykKICAtIFJl
bW92ZSB1c2VsZXNzIHRyYWlsaW5nIHNwYWNlcyBpbiBEVCBiaW5kaW5nIChSb2IpCiAgLSBBZGQg
YSBjb21taXQgbWVzc2FnZSBpbiB0aGUgcGF0Y2ggMiBzaW5jZSBJIGFtIG5vdCBzdXJlIGl0IHdp
bGwgYmUKICAgIHNxdWFzaGVkIHdpdGggdGhlIG90aGVyIChSb2IpCgp2NDoKICAtIFJlYmFzZSBv
biBsYXN0IHN0YWdpbmcgdHJlZQogIC0gQWRkICdhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2Un
IHRvIHRoZSBEVCBzcGVjaWZpY2F0aW9uIChJIG1hZGUgdGhhdAogICAgY2hhbmdlIGJsaW5kbHkg
YmVjYXVzZSBJIGFtIGFibGUgdG8gcmVwcm9kdWNlIFJvYidzIGVycm9yKSAoUm9iKQogIC0gUmVw
bGFjZSBDKysgY29tbWVudHMgd2l0aCBBbnNpIEMgY29tbWVudHMgKEthbGxlKQogIC0gQ2hlY2sg
dGhhdCBleGlzdGluZyBBbnNpIEMgY29tbWVudHMgY29tcGx5IHdpdGggbmV0LyAiY29tcGFjdCIg
c3R5bGUKICAtIERyb3Agb25lIG9ic29sZXRlIGNvbW1lbnQKICAtIFJlbW92ZSBjb21tZW50cyBh
ZnRlciAnI2VuZGlmJyBpbiBoZWFkZXIgZmlsZXMKICAtIFJlbW92ZSBtYWNybyByZWRlZmluaXRp
b25zIGluIGhpZl9hcGlfZ2VuZXJhbC5oIChLYWxsZSkKICAtIFJlcGxhY2UgY29tcGlsZXRpbWVf
YXNzZXJ0KCkgd2l0aCBCVUlMRF9CVUdfT05fTVNHKCkgKEthbGxlKQogIC0gUmVuYW1lIGllZWU4
MDIxMV9pc19hY3Rpb25fYmFjaygpIChLYWxsZSkKICAtIEFkZCBhIGNvbW1lbnQgZXhwbGFpbmlu
ZyBob3cgdGhlIFBEUyBpcyBzZW50IHRvIHRoZSBkZXZpY2UgKEthbGxlKQogIC0gQWRkIGEgY29t
bWVudCBhYm91dCBjYXNlIHdoZXJlIENPTkZJR19NTUM9PW0gaW4gdGhlIE1ha2VmaWxlIChLYWxs
ZSkKICAtIEZpeCBpcnJldmVsYW50IGNvbW1lbnQgYWJvdXQgQ09ORklHX1ZNQVBfU1RBQ0sgKEth
bGxlKQogIC0gVGFsayBhYm91dCB0aGUgdW5yZWxpYWJsZSBTRElPIFZlbmRvciBJRCBpbiB0aGUg
S2NvbmZpZyBoZWxwIChLYWxsZSkKICAtIE1lbnRpb24gdGhlIGZpcm13YXJlIHN0YXR1cyBpbiB0
aGUgY292ZXIgbGV0dGVyIChLYWxsZSkKICAtIEZpeCBtaXNhbGlnbmVkIGZ1bmN0aW9uIGFyZ3Vt
ZW50cyBpbiBrZXkuYwoKdjM6CiAgLSBkdC1iaW5kaW5nczogUmVuYW1lIGNvbmZpZy1maWxlIHBy
b3BlcnR5IChSb2IpCiAgLSBkdC1iaW5kaW5nczogTm8gYWRkaXRpb25hbCBwcm9wZXJ0aWVzIGFy
ZSBhbGxvd2VkIChzcGktbWF4LWZyZXF1ZW5jeSBpcwogICAgYWxyZWFkeSBsaXN0ZWQpIChSb2Ip
CiAgLSBkdC1iaW5kaW5nczogUmVtb3ZlIHJlZmVyZW5jZXMgZm9yIG1hYy1hZGRyZXNzIHByb3Bl
cnRpZXMgKFJvYikKICAtIFJlYmFzZSBvbiBzdGFnaW5nL3N0YWdpbmctbmV4dAoKdjI6CiAgLSBk
dC1iaW5kaW5nczogSW1wcm92ZSBkZXZpY2UgZGVzY3JpcHRpb24gYW5kIGFkZCBsaW5rIHRvIHRo
ZSBkYXRhc2hlZXQKICAgICAgKFJvYikKICAtIGR0LWJpbmRpbmdzOiBBZGQgYmxhbmsgbGluZXMg
YmV0d2VlbiBlYWNoIERUIHByb3BlcnR5IChSb2IpCiAgLSBkdC1iaW5kaW5nczogRXhwbGljaXRs
eSBtZW50aW9uIG1hYy1hZGRyZXNzIGFuZCBsb2NhbC1tYWMtYWRkcmVzcyBhbmQKICAgICAgYWRk
IHJlZmVyZW5jZXMgdG8gZXRoZXJuZXQtY29udHJvbGxlci55YW1sIChSb2IpCiAgLSBkdC1iaW5k
aW5nczogImNvbmZpZy1maWxlIiBpcyBub3QgZm9yIGRldmVsb3BtZW50L2RlYnVnIChSb2IpCiAg
LSBkdC1iaW5kaW5nczogUmVtb3ZlIGRlc2NyaXB0aW9uIG9mICJzcGktbWF4LWZyZXF1ZW5jeSIg
KFJvYikKICAtIGR0LWJpbmRpbmdzOiBVc2UgImZvbGRlZCBzY2FsYXIiIHN5bnRheCBpbnN0ZWFk
IG9mIGVzY2FwaW5nIHRoZSBjb2xvbnMKICAtIGJ1c19zZGlvLmM6IEEgY29tcGF0aWJsZSBub2Rl
IGluIHRoZSBEVCBpcyBub3cgbWFuZGF0b3J5IHRvIHByb2JlIHRoZQogICAgICBkZXZpY2UuIEFs
c28gY2hhbmdlIGRvY3VtZW50YXRpb24gb2YgZHQtYmluZGluZ3MgYWNjb3JkaW5nbHkgKFBhbGks
CiAgICAgIFVsZikKICAtIGJ1c19zZGlvLmM6IE1vdmUgU0RJTyBJRHMgdG8gc2Rpb19pZHMuaCAo
UGFsaSkKICAtIGJoLmM6IEltcG9ydCBwYXRjaCAic3RhZ2luZzogd2Z4OiBmaXggdGVzdCBvbiBy
ZXR1cm4gdmFsdWUgb2YKICAgICAgZ3Bpb2RfZ2V0X3ZhbHVlKCkiIChOYXRoYW4pCiAgLSBkYXRh
X3R4LmM6IEltcG9ydCBwYXRjaCAic3RhZ2luZzogd2Z4OiBmaXggdXNlIG9mIHVuaW5pdGlhbGl6
ZWQKICAgICAgcG9pbnRlciIKICAtIHN0YS5jOiBJbXBvcnQgcGF0Y2ggInN0YWdpbmc6IHdmeDog
bWFrZSBhIGNvbnN0IGFycmF5IHN0YXRpYywgbWFrZXMKICAgICAgb2JqZWN0IHNtYWxsZXIiIChD
b2xpbikKCnYxOgogIC0gRHJvcCB0aGUgZnVuY3Rpb24gbmFtZSBpbiB0aGUgd2FybmluZyBtZXNz
YWdlIChLYWxsZSkKICAtIFJlcGxhY2UgZ290byBieSByZXR1cm4gaW4gd2Z4X3NlbmRfcGRhdGFf
cGRzKCkgKEthbGxlLCBEYW4pCiAgLSBJbXByb3ZlIGVycm9yIGxhYmVsIGluIHdmeF9zZW5kX3Bk
YXRhX3BkcygpIChLYWxsZSkKCkrDqXLDtG1lIFBvdWlsbGVyICgyNCk6CiAgbW1jOiBzZGlvOiBh
ZGQgU0RJTyBJRHMgZm9yIFNpbGFicyBXRjIwMCBjaGlwCiAgZHQtYmluZGluZ3M6IGludHJvZHVj
ZSBzaWxhYnMsd2Z4LnlhbWwKICB3Zng6IGFkZCBNYWtlZmlsZS9LY29uZmlnCiAgd2Z4OiBhZGQg
d2Z4LmgKICB3Zng6IGFkZCBtYWluLmMvbWFpbi5oCiAgd2Z4OiBhZGQgYnVzLmgKICB3Zng6IGFk
ZCBidXNfc3BpLmMKICB3Zng6IGFkZCBidXNfc2Rpby5jCiAgd2Z4OiBhZGQgaHdpby5jL2h3aW8u
aAogIHdmeDogYWRkIGZ3aW8uYy9md2lvLmgKICB3Zng6IGFkZCBiaC5jL2JoLmgKICB3Zng6IGFk
ZCBoaWZfYXBpXyouaAogIHdmeDogYWRkIGhpZl90eCouYy9oaWZfdHgqLmgKICB3Zng6IGFkZCBr
ZXkuYy9rZXkuaAogIHdmeDogYWRkIGhpZl9yeC5jL2hpZl9yeC5oCiAgd2Z4OiBhZGQgZGF0YV9y
eC5jL2RhdGFfcnguaAogIHdmeDogYWRkIHF1ZXVlLmMvcXVldWUuaAogIHdmeDogYWRkIGRhdGFf
dHguYy9kYXRhX3R4LmgKICB3Zng6IGFkZCBzdGEuYy9zdGEuaAogIHdmeDogYWRkIHNjYW4uYy9z
Y2FuLmgKICB3Zng6IGFkZCBkZWJ1Zy5jL2RlYnVnLmgKICB3Zng6IGFkZCB0cmFjZXMuaAogIHdm
eDogcmVtb3ZlIGZyb20gdGhlIHN0YWdpbmcgYXJlYQogIHdmeDogZ2V0IG91dCBmcm9tIHRoZSBz
dGFnaW5nIGFyZWEKCiAuLi4vYmluZGluZ3MvbmV0L3dpcmVsZXNzL3NpbGFicyx3ZngueWFtbCAg
ICAgfCA1OCArKysrKysrKysrKy0tLS0tLS0tCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgMyArLQogZHJpdmVycy9uZXQvd2lyZWxlc3MvS2NvbmZpZyAg
ICAgICAgICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9uZXQvd2lyZWxlc3MvTWFrZWZpbGUgICAg
ICAgICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL0tjb25maWcg
ICAgICAgICAgIHwgMTggKysrKysrCiBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvTWFrZWZp
bGUgICAgICAgICAgfCAgMyArCiAuLi4vd2lyZWxlc3Mvc2lsYWJzfS93ZngvS2NvbmZpZyAgICAg
ICAgICAgICAgfCAgNCArKwogLi4uL3dpcmVsZXNzL3NpbGFic30vd2Z4L01ha2VmaWxlICAgICAg
ICAgICAgIHwgIDEgKwogLi4uL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9i
aC5jIHwgIDUgKy0KIC4uLi97c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvYmgu
aCB8ICAwCiAuLi4vd2lyZWxlc3Mvc2lsYWJzfS93ZngvYnVzLmggICAgICAgICAgICAgICAgfCAg
MAogLi4uL3dpcmVsZXNzL3NpbGFic30vd2Z4L2J1c19zZGlvLmMgICAgICAgICAgIHwgMjkgKysr
LS0tLS0tLQogLi4uL3dpcmVsZXNzL3NpbGFic30vd2Z4L2J1c19zcGkuYyAgICAgICAgICAgIHwg
IDAKIC4uLi93aXJlbGVzcy9zaWxhYnN9L3dmeC9kYXRhX3J4LmMgICAgICAgICAgICB8ICAwCiAu
Li4vd2lyZWxlc3Mvc2lsYWJzfS93ZngvZGF0YV9yeC5oICAgICAgICAgICAgfCAgMAogLi4uL3dp
cmVsZXNzL3NpbGFic30vd2Z4L2RhdGFfdHguYyAgICAgICAgICAgIHwgMTIgKystLQogLi4uL3dp
cmVsZXNzL3NpbGFic30vd2Z4L2RhdGFfdHguaCAgICAgICAgICAgIHwgIDAKIC4uLi93aXJlbGVz
cy9zaWxhYnN9L3dmeC9kZWJ1Zy5jICAgICAgICAgICAgICB8ICAwCiAuLi4vd2lyZWxlc3Mvc2ls
YWJzfS93ZngvZGVidWcuaCAgICAgICAgICAgICAgfCAgMAogLi4uL3dpcmVsZXNzL3NpbGFic30v
d2Z4L2Z3aW8uYyAgICAgICAgICAgICAgIHwgIDAKIC4uLi93aXJlbGVzcy9zaWxhYnN9L3dmeC9m
d2lvLmggICAgICAgICAgICAgICB8ICAwCiAuLi4vd2lyZWxlc3Mvc2lsYWJzfS93ZngvaGlmX2Fw
aV9jbWQuaCAgICAgICAgfCAgMAogLi4uL3dpcmVsZXNzL3NpbGFic30vd2Z4L2hpZl9hcGlfZ2Vu
ZXJhbC5oICAgIHwgIDYgLS0KIC4uLi93aXJlbGVzcy9zaWxhYnN9L3dmeC9oaWZfYXBpX21pYi5o
ICAgICAgICB8ICAwCiAuLi4vd2lyZWxlc3Mvc2lsYWJzfS93ZngvaGlmX3J4LmMgICAgICAgICAg
ICAgfCAgMyArLQogLi4uL3dpcmVsZXNzL3NpbGFic30vd2Z4L2hpZl9yeC5oICAgICAgICAgICAg
IHwgIDAKIC4uLi93aXJlbGVzcy9zaWxhYnN9L3dmeC9oaWZfdHguYyAgICAgICAgICAgICB8ICAx
ICsKIC4uLi93aXJlbGVzcy9zaWxhYnN9L3dmeC9oaWZfdHguaCAgICAgICAgICAgICB8ICAwCiAu
Li4vd2lyZWxlc3Mvc2lsYWJzfS93ZngvaGlmX3R4X21pYi5jICAgICAgICAgfCAgMAogLi4uL3dp
cmVsZXNzL3NpbGFic30vd2Z4L2hpZl90eF9taWIuaCAgICAgICAgIHwgIDAKIC4uLi93aXJlbGVz
cy9zaWxhYnN9L3dmeC9od2lvLmMgICAgICAgICAgICAgICB8IDEyIC0tLS0KIC4uLi93aXJlbGVz
cy9zaWxhYnN9L3dmeC9od2lvLmggICAgICAgICAgICAgICB8ICA0ICsrCiAuLi4vd2lyZWxlc3Mv
c2lsYWJzfS93Zngva2V5LmMgICAgICAgICAgICAgICAgfCAgMAogLi4uL3dpcmVsZXNzL3NpbGFi
c30vd2Z4L2tleS5oICAgICAgICAgICAgICAgIHwgIDAKIC4uLi93aXJlbGVzcy9zaWxhYnN9L3dm
eC9tYWluLmMgICAgICAgICAgICAgICB8IDM3ICsrKysrKy0tLS0tLQogLi4uL3dpcmVsZXNzL3Np
bGFic30vd2Z4L21haW4uaCAgICAgICAgICAgICAgIHwgIDAKIC4uLi93aXJlbGVzcy9zaWxhYnN9
L3dmeC9xdWV1ZS5jICAgICAgICAgICAgICB8ICAwCiAuLi4vd2lyZWxlc3Mvc2lsYWJzfS93Zngv
cXVldWUuaCAgICAgICAgICAgICAgfCAgMAogLi4uL3dpcmVsZXNzL3NpbGFic30vd2Z4L3NjYW4u
YyAgICAgICAgICAgICAgIHwgIDMgKy0KIC4uLi93aXJlbGVzcy9zaWxhYnN9L3dmeC9zY2FuLmgg
ICAgICAgICAgICAgICB8ICAwCiAuLi4vd2lyZWxlc3Mvc2lsYWJzfS93Zngvc3RhLmMgICAgICAg
ICAgICAgICAgfCAgNiArLQogLi4uL3dpcmVsZXNzL3NpbGFic30vd2Z4L3N0YS5oICAgICAgICAg
ICAgICAgIHwgIDAKIC4uLi93aXJlbGVzcy9zaWxhYnN9L3dmeC90cmFjZXMuaCAgICAgICAgICAg
ICB8ICAwCiAuLi4vd2lyZWxlc3Mvc2lsYWJzfS93Zngvd2Z4LmggICAgICAgICAgICAgICAgfCAg
MAogZHJpdmVycy9zdGFnaW5nL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgIHwgIDEgLQog
ZHJpdmVycy9zdGFnaW5nL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgIHwgIDEgLQogZHJp
dmVycy9zdGFnaW5nL3dmeC9UT0RPICAgICAgICAgICAgICAgICAgICAgIHwgIDYgLS0KIGluY2x1
ZGUvbGludXgvbW1jL3NkaW9faWRzLmggICAgICAgICAgICAgICAgICB8ICA3ICsrKwogNDggZmls
ZXMgY2hhbmdlZCwgMTEzIGluc2VydGlvbnMoKyksIDEwOSBkZWxldGlvbnMoLSkKIHJlbmFtZSB7
ZHJpdmVycy9zdGFnaW5nL3dmeC9Eb2N1bWVudGF0aW9uID0+IERvY3VtZW50YXRpb259L2Rldmlj
ZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNzL3NpbGFicyx3ZngueWFtbCAoNzElKQogY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy9LY29uZmlnCiBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL01ha2VmaWxlCiByZW5hbWUg
ZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvS2NvbmZpZyAoNjUl
KQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L01h
a2VmaWxlICg4NSUpCiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2ls
YWJzfS93ZngvYmguYyAoOTclKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVs
ZXNzL3NpbGFic30vd2Z4L2JoLmggKDEwMCUpCiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBu
ZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvYnVzLmggKDEwMCUpCiByZW5hbWUgZHJpdmVycy97c3Rh
Z2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvYnVzX3NkaW8uYyAoOTAlKQogcmVuYW1l
IGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L2J1c19zcGkuYyAo
MTAwJSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dm
eC9kYXRhX3J4LmMgKDEwMCUpCiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2lyZWxl
c3Mvc2lsYWJzfS93ZngvZGF0YV9yeC5oICgxMDAlKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcg
PT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L2RhdGFfdHguYyAoOTclKQogcmVuYW1lIGRyaXZl
cnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L2RhdGFfdHguaCAoMTAwJSkK
IHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9kZWJ1
Zy5jICgxMDAlKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFi
c30vd2Z4L2RlYnVnLmggKDEwMCUpCiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2ly
ZWxlc3Mvc2lsYWJzfS93ZngvZndpby5jICgxMDAlKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcg
PT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L2Z3aW8uaCAoMTAwJSkKIHJlbmFtZSBkcml2ZXJz
L3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9oaWZfYXBpX2NtZC5oICgxMDAl
KQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L2hp
Zl9hcGlfZ2VuZXJhbC5oICg5OCUpCiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2ly
ZWxlc3Mvc2lsYWJzfS93ZngvaGlmX2FwaV9taWIuaCAoMTAwJSkKIHJlbmFtZSBkcml2ZXJzL3tz
dGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9oaWZfcnguYyAoOTklKQogcmVuYW1l
IGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L2hpZl9yeC5oICgx
MDAlKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4
L2hpZl90eC5jICg5OSUpCiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mv
c2lsYWJzfS93ZngvaGlmX3R4LmggKDEwMCUpCiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBu
ZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvaGlmX3R4X21pYi5jICgxMDAlKQogcmVuYW1lIGRyaXZl
cnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L2hpZl90eF9taWIuaCAoMTAw
JSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9o
d2lvLmMgKDk0JSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxh
YnN9L3dmeC9od2lvLmggKDkzJSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJl
bGVzcy9zaWxhYnN9L3dmeC9rZXkuYyAoMTAwJSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+
IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9rZXkuaCAoMTAwJSkKIHJlbmFtZSBkcml2ZXJzL3tz
dGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9tYWluLmMgKDk2JSkKIHJlbmFtZSBk
cml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9tYWluLmggKDEwMCUp
CiByZW5hbWUgZHJpdmVycy97c3RhZ2luZyA9PiBuZXQvd2lyZWxlc3Mvc2lsYWJzfS93ZngvcXVl
dWUuYyAoMTAwJSkKIHJlbmFtZSBkcml2ZXJzL3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxh
YnN9L3dmeC9xdWV1ZS5oICgxMDAlKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dp
cmVsZXNzL3NpbGFic30vd2Z4L3NjYW4uYyAoOTglKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcg
PT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L3NjYW4uaCAoMTAwJSkKIHJlbmFtZSBkcml2ZXJz
L3tzdGFnaW5nID0+IG5ldC93aXJlbGVzcy9zaWxhYnN9L3dmeC9zdGEuYyAoOTklKQogcmVuYW1l
IGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L3N0YS5oICgxMDAl
KQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3NpbGFic30vd2Z4L3Ry
YWNlcy5oICgxMDAlKQogcmVuYW1lIGRyaXZlcnMve3N0YWdpbmcgPT4gbmV0L3dpcmVsZXNzL3Np
bGFic30vd2Z4L3dmeC5oICgxMDAlKQogZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2lu
Zy93ZngvVE9ETwoKLS0gCjIuMzMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
