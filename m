Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE0645012B
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Nov 2021 10:23:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67DD180E43;
	Mon, 15 Nov 2021 09:23:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J_M0SQA3YRMn; Mon, 15 Nov 2021 09:23:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4EE180E2C;
	Mon, 15 Nov 2021 09:23:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F20F1BF336
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 09:22:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 19B504038E
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 09:22:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iuxRBlKiY2UG for <devel@linuxdriverproject.org>;
 Mon, 15 Nov 2021 09:22:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E867400D3
 for <devel@driverdev.osuosl.org>; Mon, 15 Nov 2021 09:22:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10168"; a="220296851"
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="220296851"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 01:22:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="493946445"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 15 Nov 2021 01:22:55 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 15 Nov 2021 01:22:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 15 Nov 2021 01:22:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 15 Nov 2021 01:22:54 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 15 Nov 2021 01:22:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L6GEeCaVvHBqU2xnDFDRrit2madUSrOxAeDQ4AEJ+pL61o4hbEEVhd4FLf+1tDEe4WqIUv4iQTip8xqKTI8Ddi6LQGvdXIi+TkPjMaIUZS6QQltrxI7k52WqvskEqqFwm5+d/XhP35LwtshJVhAbS2lOB7F4pMhggYHfufXvHHWPtlArTLsY0j0ckbu46B2VrLzArBUxeoa6Z64bjOGtoJ09q7rbuz6+Yi9F2adzOC4IayCcDMjIU24wjc4SnRq644sW3GkLyxsBC6njQqvx8bwkyom9N3VfLVIBTJ2hPnayVVbx3HGsScxXRgJfd6uDNccDr3fwGW271SbvnoPjSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A9piGx7Eh/1MVEVDInJUtj20muKo0XunF5LSekP6u5k=;
 b=nED7NPb5xs9hghMmg8CNADbUA4Q3VQJVvpw2+3Dvg66xIP/HBT7ssyTHFOh9pNKC+RPiTHAe5CL/7B7UHQC4iMHl4tN+FS69eeM0fm9c8S1t/01JCcAucdm9aszjCwnr/adzXt50sIzjN+w0UbbVX38X9odAB+N+dsJHjUHbDxRHvOtNdNjjh14711s2gjkK+7tr/rvsP+LAfGF6JuGI4dko5ElZYcbKbTdofmno2jA6OLekpAx3LO6HGdgmBTgamPTgMl3q7uWDu6AdT8FdZjS7JsZq79Vely64kiy96vDeZM00xyCTNZnPy7c8afnj7WJbM6t3o0ZW7x7Yrtzuaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A9piGx7Eh/1MVEVDInJUtj20muKo0XunF5LSekP6u5k=;
 b=VomxEgLBlje7B3L98UHjO8NpzzzY3Y7Ax21JetsolpkzhOLDjSpvAXZgWZM2igiMZ3uzKbHsn0CFVwqtHEO8GwDH7gCagRZ6c6XMizcDyPad1JOYgHiLnuyQHfjBplb2K1PiRyadY7uTjTvZrNWn4NXZkxmC3b6HOXTyHax2314=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=intel.com;
Received: from SJ0PR11MB5598.namprd11.prod.outlook.com (2603:10b6:a03:304::12)
 by SJ0PR11MB5661.namprd11.prod.outlook.com (2603:10b6:a03:3b9::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Mon, 15 Nov
 2021 09:22:45 +0000
Received: from SJ0PR11MB5598.namprd11.prod.outlook.com
 ([fe80::3455:d126:2541:7723]) by SJ0PR11MB5598.namprd11.prod.outlook.com
 ([fe80::3455:d126:2541:7723%2]) with mapi id 15.20.4690.019; Mon, 15 Nov 2021
 09:22:45 +0000
Message-ID: <4426183d-27e2-e900-480d-210e649441a1@intel.com>
Date: Mon, 15 Nov 2021 17:22:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.0
Subject: [driver-core:debugfs_cleanup 1/1] fs/d_path.c:20:20: warning:
 Unsigned variable '.' can't be negative so it is unnecessary to test it.
 [unsignedPositive]
References: <202111150057.2Z3oqaBC-lkp@intel.com>
Content-Language: en-US
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: kernel test robot <yujie.liu@intel.com>
In-Reply-To: <202111150057.2Z3oqaBC-lkp@intel.com>
X-Forwarded-Message-Id: <202111150057.2Z3oqaBC-lkp@intel.com>
X-ClientProxiedBy: SG2PR02CA0014.apcprd02.prod.outlook.com
 (2603:1096:3:17::26) To SJ0PR11MB5598.namprd11.prod.outlook.com
 (2603:10b6:a03:304::12)
MIME-Version: 1.0
Received: from [10.238.2.77] (192.198.143.18) by
 SG2PR02CA0014.apcprd02.prod.outlook.com (2603:1096:3:17::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.27 via Frontend Transport; Mon, 15 Nov 2021 09:22:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 670b4292-94bf-493a-dfd2-08d9a81979fd
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5661:
X-Microsoft-Antispam-PRVS: <SJ0PR11MB5661329D42E87E991479EC99FB989@SJ0PR11MB5661.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:619;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xraHQ1G3USSDdR/436Ys1GZFEeyHJJFoX4g7Nlh1OnfMH4S4xHWlPEwB3KN/9QdwPW30eZsGhK5+0/aPK9Xn4PBgxdOQvwYc+92I0tav+/jPMSyRvm12imQ9bCP2WVKRZUAxg0ZynnU1LgDBUkE02uRoS6U2T4xogKlmX+CEx7RGGMVY+0TeRfxp/XinJimxhBU4PWEPyc0LDcxjOY6Z8+cwT3ctqfdDPznsJxsj8xowS8MpVaE4dN8220X6faWDCGwXhqNVBgDNz1AxrQrs+nIr/GySjpGdgZp1kKAJWE2ZEFbNdWJLxpYYs2DKbofknC5nmrrAitTep0CvOyTJLxFSJdBNfkhOMnGLdAZ6SH22fUPJeWcEP9ZhoLIAxzMOwCh4P+TWlGHydJiJ94TYU8cfdQTA/ZOoTSRERbGQr+AR+4wu8sSjDH/pbu2szb91aEQ2KtsViPrY4b6HZcar6ozrlpBifvWzW5dc/xpHxYwd06AXr4gJqhU6CDFmgDtn7v9L2Ve6y+WhI2ysXY+vl2N/w966WzLmLCf6XqYN3sWC2rpAA5gXlFjMUrvczk6PoT+Ad84gWSc7Qkp4Er9XL5xjfSxSzE9OeQy1VppwUXpLlV7vieDz8H4TicWypqmFoddfmtWMA0UmFClTywWD3v3+1MDsNe/WB0Hs3d7ianldjr+qWBhNpv5GxHfVk6Agt9sRrMtTyBgrFDyDnCA7zAkUaCQ50cdgorXDlnp6apwlDiAEYkNvCw3pstrarRw11TPq3r2NbAjz744fBFA6kzhvEb1nhVFOVIRHWk8DQC9SeI/a9T/lQfWAoAZjnObMOVIXZeW3MewwrL16y7SqAPkDKHmvdLZGe1/wrKzZpR0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5598.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(36756003)(6916009)(6666004)(5660300002)(4326008)(8676002)(38100700002)(31686004)(966005)(2616005)(6486002)(26005)(83380400001)(86362001)(66556008)(956004)(82960400001)(66476007)(66946007)(186003)(316002)(16576012)(2906002)(31696002)(508600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTg0UnpwZit1aDR3TjFuMjFRVkh3QXBaeVlvMnNhd1NjMk1FVlNHQndkc3o4?=
 =?utf-8?B?R1Q2eWZmdnpmb3d0bG5QTkhqNHd1Y2lVQnQ0YW81OHUzUGZJcXR3K3ROYjBk?=
 =?utf-8?B?VlRNcWNKZDNKdk9JSjM5Rm9wQmN2TDNTcWw4YVNBei9mbm1XaG55aEFIMUZY?=
 =?utf-8?B?K2lOSmRWVDM1WlVJZmt4a1BCbVZwSVJIUlVZWnFWQ0NnOGtmT1l2emtHTkJ3?=
 =?utf-8?B?S3hOOEtMclAwYVIzZGxBdEVlQU5ESnNLdHdMV29ZdStFSGxxNVpKT0Yya2wz?=
 =?utf-8?B?dnREbElKZHhBUlpQclJLbzRXV2xQY1I4MWNWaDdFSkdHYTFEQjhVdDgzc1Yx?=
 =?utf-8?B?My9zTDZHRFlraUxycVBGcnk4bG8rVG9rNFdRYWhvemR5Uzd2VHcxZC8rdDdV?=
 =?utf-8?B?c3VjQUcvMkJkb1Z3VGlFVDRobjZMOWM5YTlzZ3VSMlZIL0pNdW5tdFgzUlUr?=
 =?utf-8?B?cTlqZFY3QUdVa0lMNlVubit4OGlaYjZBdGdmTFEwcmN0b0dYVmtCOGNjY040?=
 =?utf-8?B?S2RKSHpJeWsvdmhiYUw1Qld6Y0RmUkRLOUtSRzlkZ2kzbHR2ai9lbElsRkVQ?=
 =?utf-8?B?TUFzYXE5MGVpVTZzMmx0VVFmalBGSFlBZU9SSHZPcThSQXhPdy9RK1F6ZzBO?=
 =?utf-8?B?ODgvMzdXWFNmdksvc0x3dUI4cmJlVTk4YUlqZ0traTVXNkdHS01Bdnhyc3NK?=
 =?utf-8?B?KzMyNUR4V25QUXA5YzVpTDM3WXJHQ0RmdTQ5UENRSzdicy9aUnhzaEpubVNZ?=
 =?utf-8?B?TlZEREllMjNDKy8zNjZaQ20wRjVpS1dPbW12Z1crL3Urc2pTYWZuMEJZZFN4?=
 =?utf-8?B?NzI0VjV5YmpsNXRjdWZWejk4M01BMGlJQllsdWlxYTF0K1hVTHN4bitHYXFU?=
 =?utf-8?B?OFhPdTlUdDJxQXRISHF5VFVldWJINHlsOXRpeWlUcFhVdHdUcXp0UGlMcHlZ?=
 =?utf-8?B?S2N2Q0hEaDJzLzYrOC82c2g4dnBtbEhIYkpYem91OUhYMHA3T1NnSHBnU2gy?=
 =?utf-8?B?VlBpbjZsU01WRXE2MkxKb2Q4amRlTzZFb2huUCtKRGdnbUYrT2E5ak1ENUxF?=
 =?utf-8?B?Z3l2MXBxNmlNRDlQa2JxaytuNW4zbDJJNWM1cXY1N1B6UmtNdnBsN2c3dStL?=
 =?utf-8?B?cWZGWEdWN2trbFFOVG96WWpmYXJKYzZZOXdBZUpMOTZMZFU5UnRQSmM2VjVU?=
 =?utf-8?B?dHJNZ3FTbEhVQUhaS1NNTEdHbEMwenBNVGF5bkw3NkR2eHV4OTRyWlQ1aVc0?=
 =?utf-8?B?M2xaTjRkc0lGUUV1d3hESzhVdXBTb1E1dVpOL1dCTEx1NlpOMkV6TWp1UVZU?=
 =?utf-8?B?SUN6a2NKNXdHbGRSbGI2VXJ1YjBIc3lHVjJ3Sk10dkV3R3Nzbm5NWHh0WFhZ?=
 =?utf-8?B?eTRpdVZNS0xIcDhBSjBYSEt3ejBobnY2Y3pXQWFtaUd5NFRpZ3B5MmJ3c3Zo?=
 =?utf-8?B?TEN1SVhIc0o4bUVqWjBITStCclhGd3ZXQ2NGcDNJNlNOVFZVd0hpZ1dTVytF?=
 =?utf-8?B?S256TTNIcm9vZzRSOC8zU2xITHA2U2ZaQ3pWb3hDK0t3ZWFsNmowcGlndE82?=
 =?utf-8?B?bW9wZDU0UEI4aldCelpHQjJMWUozZ1p6WGduT1FBdGduaFVYR1krMFdtZTNE?=
 =?utf-8?B?ZDFtQmk2a3BnV005T29sRDRhSmUzTE9PZ1ROM1pGUWhIbUF5VVViMWFPTVZp?=
 =?utf-8?B?ZGxLRkpYeURCY1MxZUF2aVU2aWpWRWw1cmhvUlVkc08vY2w0RnZDY3kzUklZ?=
 =?utf-8?B?MjdaWHBOR3lRbXBDb0NCRDVWRGtvVk1vWmN3UStFU2I2eDRkdmZaUzJXOEtY?=
 =?utf-8?B?MnVpWlIyT3ZrZGNtL0lKZVNzNFdudWZmTGRsN2l5Y0l0dUdGTUtmbkdhZVRu?=
 =?utf-8?B?QXNud3kybkt0TnZpS1IwQlNVSW1zcGxxRVpYam44R1JWQjU5SGFBR2lob202?=
 =?utf-8?B?Ykg2aThkRzhsWTFrWUVtRmRHLzRISWsyb1lQcHA5UzJYUW81VDhmR1NRSzd3?=
 =?utf-8?B?clhOMXZMK21uZGw5ME13Q0VyVHdoNDJlOEl6dmM5cFN5cnh2a3U3UVY5VTIv?=
 =?utf-8?B?M1lRWERRWjYzN3RwK05SUFZmZmNUbG5FdGV1MjJIZUhUZnc2VEVjQ3NIM3hK?=
 =?utf-8?B?U0Q5NThiS1laZTBDTnVtY0FXU2gyY3JnR1NjSWRwSkRFT25iL1Mvb1lTMWNM?=
 =?utf-8?Q?zFKNncwEtAdH+15+CsuUUmg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 670b4292-94bf-493a-dfd2-08d9a81979fd
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5598.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2021 09:22:43.8890 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9/SmD/mBrLPfN/+cLKtIgkQ55eOX/hmC0RgxW/PYj92+pB0En5qz9sXN+utU1/DUPp+WEdHYHl0AIAmi4z0IiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5661
X-OriginatorOrg: intel.com
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
head:   8247270bcf99bc7bf661ae2a3f2ee6e64c7f957d
commit: 8247270bcf99bc7bf661ae2a3f2ee6e64c7f957d [1/1] fs: make d_path-like functions all have unsigned size
compiler: ia64-linux-gcc (GCC) 11.2.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


cppcheck possible warnings: (new ones prefixed by >>, may not real problems)

 >> fs/d_path.c:20:20: warning: Unsigned variable '.' can't be negative so it is unnecessary to test it. [unsignedPositive]
     if (likely(p->len >= 0))
                       ^

vim +20 fs/d_path.c

7a5cf791a74764 Al Viro            2018-03-05  10
ad08ae586586ea Al Viro            2021-05-12  11  struct prepend_buffer {
ad08ae586586ea Al Viro            2021-05-12  12  	char *buf;
8247270bcf99bc Greg Kroah-Hartman 2021-07-27  13  	unsigned int len;
ad08ae586586ea Al Viro            2021-05-12  14  };
ad08ae586586ea Al Viro            2021-05-12  15  #define DECLARE_BUFFER(__name, __buf, __len) \
ad08ae586586ea Al Viro            2021-05-12  16  	struct prepend_buffer __name = {.buf = __buf + __len, .len = __len}
ad08ae586586ea Al Viro            2021-05-12  17
ad08ae586586ea Al Viro            2021-05-12  18  static char *extract_string(struct prepend_buffer *p)
7a5cf791a74764 Al Viro            2018-03-05  19  {
ad08ae586586ea Al Viro            2021-05-12 @20  	if (likely(p->len >= 0))
ad08ae586586ea Al Viro            2021-05-12  21  		return p->buf;
ad08ae586586ea Al Viro            2021-05-12  22  	return ERR_PTR(-ENAMETOOLONG);
ad08ae586586ea Al Viro            2021-05-12  23  }
ad08ae586586ea Al Viro            2021-05-12  24

:::::: The code at line 20 was first introduced by commit
:::::: ad08ae586586ea9e2c0228a3d5a083500ea54202 d_path: introduce struct prepend_buffer

:::::: TO: Al Viro <viro@zeniv.linux.org.uk>
:::::: CC: Al Viro <viro@zeniv.linux.org.uk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
