Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CB64BDADC
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Feb 2022 17:38:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8E0F40448;
	Mon, 21 Feb 2022 16:38:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hQ5wJ_QkWkAH; Mon, 21 Feb 2022 16:38:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1EAC5401ED;
	Mon, 21 Feb 2022 16:38:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EAE791BF34D
 for <devel@linuxdriverproject.org>; Mon, 21 Feb 2022 16:38:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6BD3814A0
 for <devel@linuxdriverproject.org>; Mon, 21 Feb 2022 16:38:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4JqTA6EgaDfJ for <devel@linuxdriverproject.org>;
 Mon, 21 Feb 2022 16:38:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2042.outbound.protection.outlook.com [40.107.243.42])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 36F1681496
 for <devel@driverdev.osuosl.org>; Mon, 21 Feb 2022 16:38:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ESJO15l3+ijY9DNQjBPyFaynAMnVpszeC3pv0SGbjCsCYtFjvNi86acDVrn43PzYnmOkFClfJFAk3vO7BaaWQ4E3BqUn1xQJk95XBCcQuqasMDzmBstzo0aiZYuyNUskdo0YdKe0VF0N7+8L1NYXNZbF9I0FbjKfTwYN0Q7vczvdHWy231MxVCghZGp7LUbP6Yg+m0OTwpiO3LwJqz0P1NrbgN90hNu2nXlg4KLln7GCuywFMPyoMasTiKryqgCIcejSonDEcW2CkYvOQdUo5zC/T2OsVu7J7kFnPxbP78SeMed1PrBjzMunkM/4fpWZrkp/dtkIaFr+51pQMxKBWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d5z0N6NlWsC2x46SnS/faUcuLYEbQ6J24cBePrRRYXs=;
 b=hxvB+ZXVOM4VIL23NQKHfYY5hmLkXBsJsy5GzmWINoiSwSGGrFgOm0us7Gd6s4i+0fe2vTAbgBM4/e7kY2b+NlJyhJjIiI9MdFiTlyO+FB6EvQth9JSX5OBWY9OgVPgmWszYXI/ftCsteVm4ae9+iw9FjGgyoMibq3msFvHViN1NSxIu139yzGhOv6GQzFY/dWwNrFLUIHfOeUdAGRnYIIR0uxuPbRFZt4pbn4Djkri5DLnneZW0+i+OONsEF1rOuFIPLdSBb5zhW8lMuCWLyku+pH3oJltIrmDL1cdZy7Hrg13VEQDdDs4bpt0SSvP/L+jJn1Qh7qM2vFsJMFj9nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d5z0N6NlWsC2x46SnS/faUcuLYEbQ6J24cBePrRRYXs=;
 b=eAmKIwJee3cT8s669qMozjho33rjzR+mDK2NhfIbf9Wf7e+nmi5hC4TmBo9oo84e6UtVSsYKouolG4Ls2u3rUbUpZDSkLAPQjyYJ30fNacbIbZVYNxC1cjsN3qeb18tUy17HwBEu/c2MzNfvE7dIEN98isH8yiUT02O8zOVcLis=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silabs.com;
Received: from PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 by PH0PR11MB4790.namprd11.prod.outlook.com (2603:10b6:510:40::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.16; Mon, 21 Feb
 2022 16:38:18 +0000
Received: from PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::1b3:e483:7396:1f98]) by PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::1b3:e483:7396:1f98%3]) with mapi id 15.20.4995.027; Mon, 21 Feb 2022
 16:38:18 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>,
 linux-firmware@kernel.org
Subject: [PATCH 1/3] wfx: rename silabs/ into wfx/
Date: Mon, 21 Feb 2022 17:37:52 +0100
Message-Id: <20220221163754.150011-2-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220221163754.150011-1-Jerome.Pouiller@silabs.com>
References: <20220221163754.150011-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0225.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1e::21) To PH0PR11MB5657.namprd11.prod.outlook.com
 (2603:10b6:510:ee::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 76314dd3-bf93-4aac-6387-08d9f55890c6
X-MS-TrafficTypeDiagnostic: PH0PR11MB4790:EE_
X-Microsoft-Antispam-PRVS: <PH0PR11MB479074BD7A7E5C5652008939933A9@PH0PR11MB4790.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xdeml/4BlQQY4t0m/CR53obOgxQB1gLeKnHThGY1Wdwvj8+eyGWoQltXp+rNAy09oD3UjZz7Xe8gS09Zetu5svTyxeR4pRErwq804YItEmOjeF7DkvrbiGaLDg/5uvV/Vsmn5e9iDwzU+XBPWd+tlJ1sSzadVkSkU0y0iYbrbhiSEjwpID+z0kZdX6XPNDn6/ncKkQ/g5do0KsoNDs6HDXvBOUNomllyXcd5OjYdU0yq9GiRdlEYyNB0cA7J9lupqWqNvj26mHfy6UhXYV9CN6m53xwu7XNRvRfVN9MNjU0RI3u1hjMGqHdU4SabnKp6MruzVa2eWJtkldoi49I9n6QUDSKHDQRmzqhIf1QSMYY/AcfAX5rzK9i5xOPm8eaPS9asYAiZhcLNQkiHR3+c7vKySt1ZkudRfKJtL4M7JWEL3Dl+xGhNhtskHPODIWNcLLJTZTfbCzGIWDnTfCfQIx3EPZg9RuJN13vaLmgYCezOV5Qc6hgnKExn38n/VCQqH84WIjDP+tJFEV6oR8Q61LiH7uUKLYq2VUxgnWpLP0lRRqCClNo5jazJzHWmHbLeLn3p65DfttxX5ZOacGgSaSKbmoElUUGgsbHWERGNV+JyqNK5dg+lGTfwaLEWM/I5D0U6c+X1q/WHXuztUtYVls3EpT0BDXdh3RFVpfMtFSvVqksU7YXG/RE2x6x1Ki+pe06gbfdyGFlQihiv/TPeEGQ3ubvBgpwgM065vOHF+6T1d42py6hlrZRmnG5sgAvZ0k/mXE+9T1J2cNZL/2hczrT37wEAP698DehmI/+kxAY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6666004)(83380400001)(38100700002)(38350700002)(66946007)(66476007)(66556008)(8936002)(4326008)(8676002)(2906002)(6506007)(52116002)(966005)(508600001)(5660300002)(6486002)(26005)(316002)(1076003)(107886003)(186003)(54906003)(2616005)(6512007)(86362001)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWREK1lVSCtIZmhxVkNDZ3h5TE8ycU9BelREUExDUy9BdlhEanp3WDFzbFNr?=
 =?utf-8?B?QjVLV3IxUFEzOHF3YnhZTkQvdW5jS3NEYXRXdTgrbGlRV1lJTTBiQ1J2RS9P?=
 =?utf-8?B?aUxaTkM5c0ZUK2xyZlhoTU12WXQ2WWpFYUNzc3NNRkxOVnlRVFA1djloRm1o?=
 =?utf-8?B?RGZNYzkrcTQ3aDBtSzBRWVl0QXZPYmFNcVBPQzFrTnRWS2RhTXpnV3BpcVl0?=
 =?utf-8?B?c3NnNzMzSWFQTkR5WGZ4TmkrUC9YSG1kV2xQQjI0OWZENVRIVzF0V1JrTWxm?=
 =?utf-8?B?eFBHT0Nub0s1Umk1RDlzWkhyRXUyUnE2NUg3eUg1TTArQmVYVDRHQ1hNU1ZT?=
 =?utf-8?B?ZW12N2ZGZ1lDOTVpWHppVTRtS01hYTVvZGJLZHBSOWV4U3RYTkRoelZHZlUr?=
 =?utf-8?B?MnFzZ1JrTTZNSnFVck9uTzBiZmpsN05IWjBGN1MwcXZlRFV4MHhheWhLSXlL?=
 =?utf-8?B?eVZxdU1ER2NDT1E3TkFwajNxYkJJYnVYYWZMRTh6bEpqaVlETExLSEE0bVZn?=
 =?utf-8?B?VzZRblR3U01FcW0zVEp1aTQxNHRiaDJ3OCtmYlZuem41WjFJS3RGTy9EdWw1?=
 =?utf-8?B?c0VRdDY4NG1aUGV1WitLb3l2THlBazJSelY1R0wrZithNW5pYnRxVFR6VWpi?=
 =?utf-8?B?RFQvSE5uWWFiN2J4aWQ1OXBPR2k2cEVJaytSeDVDbGtXaFFsOFZ2d1k4RUN0?=
 =?utf-8?B?TUY3N0ptQ0hCTlI5ekVteE9nbzZ4RWgrMU5YaS9iTzBEa3hBcTNlOENTRmx4?=
 =?utf-8?B?aFpxUy9NNVlKSFJqUzdSYUgycWFxUDRNZEdnaHNsa1M4MHJlZ1lHa0NhQTlp?=
 =?utf-8?B?VzJZU0VvTmdhVWNPTk1JT1JzRG8zVDdldlNrVVNaLzNhSnU5NVdoUWpQSnJD?=
 =?utf-8?B?a1ByYnYra2FoNXE1UStHSkRMeU1WUTRhZ1RGN2lkQWMwTVFoNG9BTmhJRkFT?=
 =?utf-8?B?Vk1kdjNCZzd0d0VFdVZCOGp4aEF6K0FyV0trWUNBNW1VOUZMN2JUZTg2a1Rn?=
 =?utf-8?B?V3FsSlhqcUphdUNvS1ljNDhrV2hiSmplMnhscWtlYmxTVVdqTFFxSlpOcmRp?=
 =?utf-8?B?eVI3eGtsUE9lbytLR0htSFA0cjl4VzI2Y2xqeXdUZVJ1ZmFPTGQ4RzBsRGlm?=
 =?utf-8?B?UVZwVSszYzMyVndGVUhzUFVZS2IyN2t2UXVxbDQreGRRUnR0UVYzVVNuajFy?=
 =?utf-8?B?OFFETVRDTDYwWHZVSG8xNzU4ZENNMS94V1B0UTNSN0xrRFhnSjliVE5WZVhM?=
 =?utf-8?B?by81NS9DOUk5SnNURzFrL0FqbVNIdGxCU1BURElMejFoa1daVElzNVk1RUsr?=
 =?utf-8?B?YTc5OC9JUTAzNkpLSTViSVRKSXBCUUJVLzZieWpJZjZ2L1JyenYxKzRWQSt1?=
 =?utf-8?B?R0JCUXlabUJrbUgzZ2VWWlhpUytGd2pXU05SdGd2QldVS2FZUWU5NTVPQVBY?=
 =?utf-8?B?alBqbkdPNkV6aVhSQVRZaXhYOVJiL3ZQM0hXYTRkak1LN0lHSVBvZ1JacTgw?=
 =?utf-8?B?Y0MxeC8ra0lUMWpRdXFoN3hXMVFDaGJQRGZ2TXpsTzdBRWNwNnExU1VSNGFJ?=
 =?utf-8?B?c3FlbUZNSFhWNWxSa0VlU3JtYVhzYUJ5U2FWRExiaUJ6aXZIU3hGQnc5R0dC?=
 =?utf-8?B?OGpnVjg1K01MaE5RMDFIZitISUI0Zm8zQytDZTErWDBXT243N3E0V2xOTXhP?=
 =?utf-8?B?UUNVZzlpVnRhT0E1TVptTTlrMHFncG10Y2pmQWpoT1pRMllyWnIvNVlIZUJJ?=
 =?utf-8?B?Uk9UK0JQRGd6c01NMERCTUkxSlM5Z24yUmRwMWRmcTBaZlN1VTQwVVlobWhG?=
 =?utf-8?B?QjhEQ2R4cFFXMlVBRXB2eXRaSVpWM2J0NVloZFNPMVRUWVJDblpSdW94VzlW?=
 =?utf-8?B?Y0F2cmNXZFIyZTJ5M1o2Um1uVUJUdGJibkczQUJ4U1ZhZjFWaXoxRkhCM1dy?=
 =?utf-8?B?NDBkQmpHZ2lSOGRHNkpNZUd6UFkzcVFDYVZ2R3FCbDE4cktXRFQ1SVNDcWpI?=
 =?utf-8?B?MTVlVGc1UGxQY1l0aEt1NC93SWZ3Mm9MdHRCWHE5TTBGcmlMY2VQcThIc1pk?=
 =?utf-8?B?dHYwUytBajB3OEJzKzQwZldWWmVHZGxabi9KUVVxanhOSUpzdUk1TWFMUkVC?=
 =?utf-8?B?NDRVa2dSOXNleFlYZlZmS2REaC9pQWIrOWozYXc5TEIrV20xS0NBRFJHeVBs?=
 =?utf-8?Q?D0PEou9sF33j9yoY6g1KF/E=3D?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76314dd3-bf93-4aac-6387-08d9f55890c6
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2022 16:38:18.6202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wwMjnWtTPr+sIKNWwmlqZtWq1co4WIL3Or37e3jtZQs7z1EM5HDoLa6DUiE+n2rn86ARvh6JYm5n4jkqjLoARA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4790
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
Cc: devel@driverdev.osuosl.org, jerome.pouiller@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKV2lG
aSBkZXZpY2UgbWFpbnRhaW5lciBleHByZXNzZWQgaGUgcHJlZmVycyB0byB1c2UgdGhlIHNhbWUg
bmFtZSBmb3IgdGhlCmRyaXZlciBhbmQgdGhlIGZpcm13YXJlIGRpcmVjdG9yeVsxXS4KClNpbmNl
IHRoZSBkcml2ZXIgaXMgbm90IHlldCBtZXJnZWQsIHRoZSByZW5hbWluZyBkb2VzIG5vdCBicmVh
awphbnl0aGluZy4KClsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2Lzg3c2Z4bGo2
czEuZnNmQGNvZGVhdXJvcmEub3JnLwoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIg
PGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0KIFdIRU5DRSAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgICA0ICsrLS0KIHtzaWxhYnMgPT4gd2Z4fS9MSUNFTkNFLndmMjAwICAgIHwg
ICAwCiB7c2lsYWJzID0+IHdmeH0vd2ZtX3dmMjAwX0MwLnNlYyB8IEJpbgogMyBmaWxlcyBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCiByZW5hbWUge3NpbGFicyA9PiB3
Znh9L0xJQ0VOQ0Uud2YyMDAgKDEwMCUpCiByZW5hbWUge3NpbGFicyA9PiB3Znh9L3dmbV93ZjIw
MF9DMC5zZWMgKDEwMCUpCgpkaWZmIC0tZ2l0IGEvV0hFTkNFIGIvV0hFTkNFCmluZGV4IGFlMzMz
NzIuLjBhNmNiMTUgMTAwNjQ0Ci0tLSBhL1dIRU5DRQorKysgYi9XSEVOQ0UKQEAgLTU4NDIsMTAg
KzU4NDIsMTAgQEAgTGljZW5zZTogUmVkaXN0cmlidXRhYmxlLiBTZWUgTElDRU5TRS5Mb250aXVt
IGZvciBkZXRhaWxzLgogCiBEcml2ZXI6IHdmeCAtIFNpbGljb24gTGFicyBXaS1GaSBUcmFuc2Nl
aXZlcgogCi1GaWxlOiBzaWxhYnMvd2ZtX3dmMjAwX0MwLnNlYworRmlsZTogd2Z4L3dmbV93ZjIw
MF9DMC5zZWMKIFZlcnNpb246IDMuMTIuMQogCi1MaWNlbmNlOiBSZWRpc3RyaWJ1dGFibGUuIFNl
ZSBzaWxhYnMvTElDRU5DRS53ZjIwMCBmb3IgZGV0YWlscy4KK0xpY2VuY2U6IFJlZGlzdHJpYnV0
YWJsZS4gU2VlIHdmeC9MSUNFTkNFLndmMjAwIGZvciBkZXRhaWxzLgogT3JpZ2luYXRlcyBmcm9t
IGh0dHBzOi8vZ2l0aHViLmNvbS9TaWxpY29uTGFicy93ZngtZmlybXdhcmUKIAogLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KZGlmZiAtLWdpdCBhL3NpbGFicy9MSUNFTkNFLndmMjAwIGIvd2Z4L0xJQ0VOQ0Uu
d2YyMDAKc2ltaWxhcml0eSBpbmRleCAxMDAlCnJlbmFtZSBmcm9tIHNpbGFicy9MSUNFTkNFLndm
MjAwCnJlbmFtZSB0byB3ZngvTElDRU5DRS53ZjIwMApkaWZmIC0tZ2l0IGEvc2lsYWJzL3dmbV93
ZjIwMF9DMC5zZWMgYi93Zngvd2ZtX3dmMjAwX0MwLnNlYwpzaW1pbGFyaXR5IGluZGV4IDEwMCUK
cmVuYW1lIGZyb20gc2lsYWJzL3dmbV93ZjIwMF9DMC5zZWMKcmVuYW1lIHRvIHdmeC93Zm1fd2Yy
MDBfQzAuc2VjCi0tIAoyLjM0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
