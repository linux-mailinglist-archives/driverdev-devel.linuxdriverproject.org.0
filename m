Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EC048B383
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jan 2022 18:18:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1648080D4D;
	Tue, 11 Jan 2022 17:18:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mDt6Mn_o5Ksv; Tue, 11 Jan 2022 17:18:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51FA08142C;
	Tue, 11 Jan 2022 17:18:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50D181BF368
 for <devel@linuxdriverproject.org>; Tue, 11 Jan 2022 17:15:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D82C4149F
 for <devel@linuxdriverproject.org>; Tue, 11 Jan 2022 17:15:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BDCz3LP5oq-7 for <devel@linuxdriverproject.org>;
 Tue, 11 Jan 2022 17:15:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2060d.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eab::60d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5AB674148B
 for <devel@driverdev.osuosl.org>; Tue, 11 Jan 2022 17:15:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SpOSxtRj+fgSSrIlSC4Im1iEhWyt2MCmbVxhSDTZ7D8Y/zh0Uh8Y+iwkOv8GzcsOx+WnsMV/OS4jeZnfZKzaRaVvBUF7XzQDPNfwM1MUx5o9hKMObpxzJjRoUeXI069pBOEBrNyUUT+AXVkltd9XrQXL/g0MOwZWK1F1rf9IuD+dHyjayuYY9Qt4Y49CxK2uZYUehUpkai/qNKIbuFSY/UCwF5Gl0TGE14RaC/YOprGw71xQcO2YSd2+mRRh9wAVfIE+vebaiumrOa6xCo5fy7uhv9nsGpfZ+UjE/IQ4yWSZj4P1P/fVbvuBvcgC3BjrzFiIkqZCQ1aqnBLa5QxGyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j9h0zA7BZD91wuRETbxelKSdy5XxdmI3rjzlFKTtFEg=;
 b=Z0FtIS/1z/PPIlh0lszDq4umFqveFO566K9gVnG6GQzkUC7x01Ur4bGarVTLEEqNcxlNqV9DMxwaOchGmdAYw1p+9K+/sdRfcpmrECqYbfijo1Ez1CKkdqvwnd1jaoZCuiORIb0GpCws7AGqjHGT+OQ+ulR1gE5Pz6fdRN5Z4CYuTx1/gG5suwjT1b/zhJH0pX4TVHLvDbG3GWEBdyXhtsD+ohC8wG4H87e8pIo5sXgLzVI15lfghMlB+NCJXMR6QZkohUFuE7srCtwcOnhZKu7YFlgvn3asTmqCznOmdI09mr2q3CyD/sG4vl91Fy7Aj4s0vM+gnjuZ964Pl8D//A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j9h0zA7BZD91wuRETbxelKSdy5XxdmI3rjzlFKTtFEg=;
 b=i1Pbzb/inYxUQO2WZo+FS/Uokwu5NdDaD4t1b1Gvs7QY89cJJZU+JlOVyVXqSmVNVeWMskkhUb5IxGukvCu+6K8ZEa7Xi2E6a6EE79/g17EGzBZjYJqF7+u8+E0b5iK8K82OjKLfnH4H9Q7yM+YVgTSFLTsri+IEsozgnfjVmxo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silabs.com;
Received: from PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 by PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.11; Tue, 11 Jan
 2022 17:15:25 +0000
Received: from PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::d031:da9e:71a:73e4]) by PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::d031:da9e:71a:73e4%6]) with mapi id 15.20.4867.012; Tue, 11 Jan 2022
 17:15:25 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v9 15/24] wfx: add hif_rx.c/hif_rx.h
Date: Tue, 11 Jan 2022 18:14:15 +0100
Message-Id: <20220111171424.862764-16-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SN1PR12CA0099.namprd12.prod.outlook.com
 (2603:10b6:802:21::34) To PH0PR11MB5657.namprd11.prod.outlook.com
 (2603:10b6:510:ee::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 16a027b1-44a8-4084-6d9a-08d9d525f4fb
X-MS-TrafficTypeDiagnostic: PH0PR11MB5657:EE_
X-Microsoft-Antispam-PRVS: <PH0PR11MB56571AE7B3209C70D89F7B8A93519@PH0PR11MB5657.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1332;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1cjyTKj/S0Hd2WLDFkkEE2a1jFNYjYoxjHN2wYAytArayA8lQGrjqLGjXDvEfvj5nS9NEfbUYekniGizAjAY3fI7jbUWvFqVa50LmONacolHU12FTzSXeC2HoSRYsrkM/WVS8vVYgFKrWze2tI39mAbDtjN2m3zWiMNDo+o1DowXy0BjfsWUwrrX2h4Cn43A2x3PQ/jn2rSBvrcBTjoVPzUOIkWta1umD/54xrrxsvQacVCaHLBMxewKFvWeOXWz7sQWCKjxTYck4MqzfH8fQq4fUmxg89q416WOixuejBrmJ4ehQ8ks0QVtQIF7Mg6qur9CZLmndnDfky5DNwqc+2XVEPjuxCJh1o9qdHx6nNuzIgRQwvBeIJqgTJJd4YNMmneTlXS1Xymqi20ZBHrX+Ni1tWo3r5oaCwZa/3VFob/nSFBf1sU0pt21nFr1u2/JeVRPI2o2+e/1A32G3uBfzfeut4ZwQ+ib6PI+0Km/NlppBBx2TNlwb6NuvBGbxkSaD7c7ouzt9W9XI3iVDZGzAT4oQxzoKrahYzQirNjmlv8kZXoo8HqmLTVUe0c7eaImmnfraPzG7E+2lYzi8rBchKI7jzbsibs+EV80TDe5kegsa8cNW7qwRy6kuSGxX5xR99toxiNQ4LLCmZZFXLzmcw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6506007)(66574015)(86362001)(5660300002)(8936002)(7416002)(6916009)(8676002)(83380400001)(1076003)(6486002)(36756003)(38100700002)(186003)(66946007)(6666004)(2616005)(4326008)(2906002)(316002)(107886003)(66556008)(66476007)(54906003)(6512007)(508600001)(30864003)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGpGelQ3YmhoVDVYUWpqNDNjNUtFQWFsblBwMDFsZm0ycW93QWxqR0J3Y2hZ?=
 =?utf-8?B?ZjFNcTlsdnVkSksvenVHQ1BWRzFWQU1DVC96Ykkxc0JBenBzWE9sdDdQeFhM?=
 =?utf-8?B?RDZOT3FJYzBMSzNPdzNQS0dVcmtIU1Y3cDB3UXowTGFicDdqWkNhc2ZQVUFL?=
 =?utf-8?B?dFVCQ0pHR3BZZVhaSkRoaU40My9jWnFvRHFJWWgxQ0V0WENVa3gzbTlVeGk2?=
 =?utf-8?B?YmxVMVNkOHMvUmFZNEd6SnJQYWNUQi9LZm1xTHhQSHRBL2l1WWxJbmJuZ3B4?=
 =?utf-8?B?Wm4xYWtUR2NTcy9XRzViY1BPS3lEVkxxc1JvTG5mcmpiS09yRzNXYUVwT29r?=
 =?utf-8?B?Vk4vTFQ3QWZLZ0kzdEI4eE1jajFIZVhmOGdkTEE3UW8yV1lpVHEwcFBEUzZx?=
 =?utf-8?B?OHZWR1Rzd2hSVTdLZUZEcitLZ3Jnd09pTFJ5K0pFWWtmYkJuT21mL3I4UVVO?=
 =?utf-8?B?UnJuZmxVdk9LNHppU1c0bGFBb0k4ajVYbTY4OThObDBYZzVUZ1VRZ2lXZE1B?=
 =?utf-8?B?N3l3WkdBM3pUSEtvVnordytRSGZoWS8veUJpS3Eya0RGOGw0U3lySCtRS09h?=
 =?utf-8?B?ZVZUdGpJbzJ6dUlTMzZkVFc5TFpiaUNwWmlJNlE2bVdUNGwvTkMwQ1l1MjE5?=
 =?utf-8?B?bmtjN0pSSEZFVkhHcy9naTMwL05JcGRyRE5HNnluYW9Ta0ZoaU85TVRFWHg4?=
 =?utf-8?B?S3IyMXJzNFFzL0dZdzViYnd2Q01DNktSWnI4Z0dMVlNNTG9Wc1pZN2xtZ21S?=
 =?utf-8?B?alJCVHEwcmFqZk5GZlgwUlphS0xTOXVBcVJvVGZjSDY0VHdsTmpmTUZlN09x?=
 =?utf-8?B?STZqa2htNW8zcVpyOHBzODNMV0tIditsK2JFYmFyNklsOGhrQklBMElUVzJE?=
 =?utf-8?B?bGVOQ0pNblI2WEZ1bHEzNFFxWmxXdUhZaWdNajhxdnFKWEx3MmRwaFErM2Uz?=
 =?utf-8?B?bnM3SXBCdnczYlZGcEZtUWdsWk9EbVJtanVlZFNaV1Vhb1ZWUmV1T2JKQkk3?=
 =?utf-8?B?dXNEZjR2UFlvbWxJNlVreithQUxMS2ZqQzE2OTRjSXczc2lFblFpTXY3Q1VO?=
 =?utf-8?B?RDd4T29GTUtJTnNBL0xPZ2NZZzhnLzdqeXloaVQvOEovZEZaZWJlclV4Y2lo?=
 =?utf-8?B?dzB4bnVjT3hmRkl3SFB4bnh6M05Jd1BGQ1Rob0hIaVlmK0YxekI2WDJ3aWR1?=
 =?utf-8?B?NHJob0s3NXprMGtvWk5uYXdhSnMyRkVwR3RYbURqT3UzM0R1czNQV2RNcWlp?=
 =?utf-8?B?WWdlRFZsYXpTOWNWdjFzNENvVU4zdmFrYURraEhHSVE1U09UV3R6NXBKNjhM?=
 =?utf-8?B?V2luQWVCNWV5ajNKRndETXNNd1FGZlRKampNejdzVVdWdVpQbVFhcHZEOHlQ?=
 =?utf-8?B?SlZNODI3UzlEWHdkUnZaMTNmUFd3MmlZVHBXSXhSU0krdGNTbUs2MzNqMzcx?=
 =?utf-8?B?NEVTRXJ1TCsvcXVWbEVhU2w1SmlPVWRPaUhadGJHZXRoZXV2RXR3bnpNQXNO?=
 =?utf-8?B?ZDlTVlJ1R2hjQ2Z0UHV2TisxbDNpTGtTMkZQcEEyWlBubUlqWk41WjgvOW1s?=
 =?utf-8?B?V2pRdTdOd0JvNTNoVWs5aGhQZ1JrN2I3Z0J5Y3k4VDN5RmlRZ283a0QwUk9V?=
 =?utf-8?B?dXVTa3NWMW9KZjB4QU5raWMvam9yUitvMHpxbWFObVN1VndmeU5lOFZJVkgy?=
 =?utf-8?B?WXB3cXovUXllRXhxaFlkUFgwRXlWT00zVTdTOGtyMWd0QUsvVk96QzlpZzAw?=
 =?utf-8?B?U3g2YTV6L1pkd1I5OGJKZ0ZUZzFDeFdOaVJ4QTFkS1NGUXp2aFpINUlMUUk5?=
 =?utf-8?B?MnlIb0tvbEtua25aTHZpNzRiNGkxQkY1NDY2YTZLTHJsRGo1OXozNVF0dmxr?=
 =?utf-8?B?NGJqeG1iOUFEWnN6WmhPN0lpeVVUVndleklDdnoxeVIrMUZOZVN6K0s5Q3hX?=
 =?utf-8?B?TW42Z3AvdzVxVnp0cG8xSW1MbHRGMStJbWtjMG1HbW13eVJEMU1vRXk0K2NV?=
 =?utf-8?B?eHhyS0hrZFY4akF5WjFhdzVDQTZUTTZQdit1ZEZiMlBZbi90VmYyeFJiam5x?=
 =?utf-8?B?RCszLytiL2RqdlRJcndXMWd5YnZOZ2MzV0tPVmM5T2ZIcXZVSWpwVFZlSTZU?=
 =?utf-8?B?TStiQ1ZxS2MrMzVuU3RFcmxIVndLUXlCMlJpZVJKQkVnTlQrWFpvTno1Smx6?=
 =?utf-8?B?dElQUVduamFwZkFhZ0lNYm1GZXdnTUlwM3lsZ05XUyt3b3ZRU0VGRmhzTXJx?=
 =?utf-8?Q?5FrqlejJbgQMnvuEDCAMfh3iCQUjhM6ySY5HzPwgfQ=3D?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16a027b1-44a8-4084-6d9a-08d9d525f4fb
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2022 17:15:25.2759 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UHWHP1XFjVnGtWKRm8cTds1wap02inWqVVRuHBa9HCWsUv2vbX7HlQcpwApXNSRDVrT/WgwrB9pHeUvfUez0Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5657
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU2ln
bmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29t
PgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvaGlmX3J4LmMgfCAzOTIgKysr
KysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvaGlm
X3J4LmggfCAgMTcgKwogMiBmaWxlcyBjaGFuZ2VkLCA0MDkgaW5zZXJ0aW9ucygrKQogY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvaGlmX3J4LmMKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2hpZl9yeC5o
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9oaWZfcnguYyBi
L2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvaGlmX3J4LmMKbmV3IGZpbGUgbW9kZSAx
MDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4zMDJiZGIyYmYwMzYKLS0tIC9kZXYvbnVsbAorKysg
Yi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2hpZl9yeC5jCkBAIC0wLDAgKzEsMzky
IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CisvKgorICogSGFu
ZGxpbmcgb2YgdGhlIGNoaXAtdG8taG9zdCBldmVudHMgKGFrYSBpbmRpY2F0aW9ucykgb2YgdGhl
IGhhcmR3YXJlIEFQSS4KKyAqCisgKiBDb3B5cmlnaHQgKGMpIDIwMTctMjAyMCwgU2lsaWNvbiBM
YWJvcmF0b3JpZXMsIEluYy4KKyAqIENvcHlyaWdodCAoYykgMjAxMCwgU1QtRXJpY3Nzb24KKyAq
LworI2luY2x1ZGUgPGxpbnV4L3NrYnVmZi5oPgorI2luY2x1ZGUgPGxpbnV4L2V0aGVyZGV2aWNl
Lmg+CisKKyNpbmNsdWRlICJoaWZfcnguaCIKKyNpbmNsdWRlICJ3ZnguaCIKKyNpbmNsdWRlICJz
Y2FuLmgiCisjaW5jbHVkZSAiYmguaCIKKyNpbmNsdWRlICJzdGEuaCIKKyNpbmNsdWRlICJkYXRh
X3J4LmgiCisjaW5jbHVkZSAiaGlmX2FwaV9jbWQuaCIKKworc3RhdGljIGludCB3ZnhfaGlmX2dl
bmVyaWNfY29uZmlybShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwKKwkJCQkgICBjb25zdCBzdHJ1Y3Qg
d2Z4X2hpZl9tc2cgKmhpZiwgY29uc3Qgdm9pZCAqYnVmKQoreworCS8qIEFsbCBjb25maXJtIG1l
c3NhZ2VzIHN0YXJ0IHdpdGggc3RhdHVzICovCisJaW50IHN0YXR1cyA9IGxlMzJfdG9fY3B1cCgo
X19sZTMyICopYnVmKTsKKwlpbnQgY21kID0gaGlmLT5pZDsKKwlpbnQgbGVuID0gbGUxNl90b19j
cHUoaGlmLT5sZW4pIC0gNDsgLyogZHJvcCBoZWFkZXIgKi8KKworCVdBUk4oIW11dGV4X2lzX2xv
Y2tlZCgmd2Rldi0+aGlmX2NtZC5sb2NrKSwgImRhdGEgbG9ja2luZyBlcnJvciIpOworCisJaWYg
KCF3ZGV2LT5oaWZfY21kLmJ1Zl9zZW5kKSB7CisJCWRldl93YXJuKHdkZXYtPmRldiwgInVuZXhw
ZWN0ZWQgY29uZmlybWF0aW9uOiAweCUuMnhcbiIsIGNtZCk7CisJCXJldHVybiAtRUlOVkFMOwor
CX0KKworCWlmIChjbWQgIT0gd2Rldi0+aGlmX2NtZC5idWZfc2VuZC0+aWQpIHsKKwkJZGV2X3dh
cm4od2Rldi0+ZGV2LCAiY2hpcCByZXNwb25zZSBtaXNtYXRjaCByZXF1ZXN0OiAweCUuMnggdnMg
MHglLjJ4XG4iLAorCQkJIGNtZCwgd2Rldi0+aGlmX2NtZC5idWZfc2VuZC0+aWQpOworCQlyZXR1
cm4gLUVJTlZBTDsKKwl9CisKKwlpZiAod2Rldi0+aGlmX2NtZC5idWZfcmVjdikgeworCQlpZiAo
d2Rldi0+aGlmX2NtZC5sZW5fcmVjdiA+PSBsZW4gJiYgbGVuID4gMCkKKwkJCW1lbWNweSh3ZGV2
LT5oaWZfY21kLmJ1Zl9yZWN2LCBidWYsIGxlbik7CisJCWVsc2UKKwkJCXN0YXR1cyA9IC1FSU87
CisJfQorCXdkZXYtPmhpZl9jbWQucmV0ID0gc3RhdHVzOworCisJY29tcGxldGUoJndkZXYtPmhp
Zl9jbWQuZG9uZSk7CisJcmV0dXJuIHN0YXR1czsKK30KKworc3RhdGljIGludCB3ZnhfaGlmX3R4
X2NvbmZpcm0oc3RydWN0IHdmeF9kZXYgKndkZXYsCisJCQkgICAgICBjb25zdCBzdHJ1Y3Qgd2Z4
X2hpZl9tc2cgKmhpZiwgY29uc3Qgdm9pZCAqYnVmKQoreworCWNvbnN0IHN0cnVjdCB3ZnhfaGlm
X2NuZl90eCAqYm9keSA9IGJ1ZjsKKworCXdmeF90eF9jb25maXJtX2NiKHdkZXYsIGJvZHkpOwor
CXJldHVybiAwOworfQorCitzdGF0aWMgaW50IHdmeF9oaWZfbXVsdGlfdHhfY29uZmlybShzdHJ1
Y3Qgd2Z4X2RldiAqd2RldiwKKwkJCQkgICAgY29uc3Qgc3RydWN0IHdmeF9oaWZfbXNnICpoaWYs
IGNvbnN0IHZvaWQgKmJ1ZikKK3sKKwljb25zdCBzdHJ1Y3Qgd2Z4X2hpZl9jbmZfbXVsdGlfdHJh
bnNtaXQgKmJvZHkgPSBidWY7CisJaW50IGk7CisKKwlXQVJOKGJvZHktPm51bV90eF9jb25mcyA8
PSAwLCAiY29ycnVwdGVkIG1lc3NhZ2UiKTsKKwlmb3IgKGkgPSAwOyBpIDwgYm9keS0+bnVtX3R4
X2NvbmZzOyBpKyspCisJCXdmeF90eF9jb25maXJtX2NiKHdkZXYsICZib2R5LT50eF9jb25mX3Bh
eWxvYWRbaV0pOworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IHdmeF9oaWZfc3RhcnR1cF9p
bmRpY2F0aW9uKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LAorCQkJCSAgICAgIGNvbnN0IHN0cnVjdCB3
ZnhfaGlmX21zZyAqaGlmLCBjb25zdCB2b2lkICpidWYpCit7CisJY29uc3Qgc3RydWN0IHdmeF9o
aWZfaW5kX3N0YXJ0dXAgKmJvZHkgPSBidWY7CisKKwlpZiAoYm9keS0+c3RhdHVzIHx8IGJvZHkt
PmZpcm13YXJlX3R5cGUgPiA0KSB7CisJCWRldl9lcnIod2Rldi0+ZGV2LCAicmVjZWl2ZWQgaW52
YWxpZCBzdGFydHVwIGluZGljYXRpb24iKTsKKwkJcmV0dXJuIC1FSU5WQUw7CisJfQorCW1lbWNw
eSgmd2Rldi0+aHdfY2FwcywgYm9keSwgc2l6ZW9mKHN0cnVjdCB3ZnhfaGlmX2luZF9zdGFydHVw
KSk7CisJY29tcGxldGUoJndkZXYtPmZpcm13YXJlX3JlYWR5KTsKKwlyZXR1cm4gMDsKK30KKwor
c3RhdGljIGludCB3ZnhfaGlmX3dha2V1cF9pbmRpY2F0aW9uKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2
LAorCQkJCSAgICAgY29uc3Qgc3RydWN0IHdmeF9oaWZfbXNnICpoaWYsIGNvbnN0IHZvaWQgKmJ1
ZikKK3sKKwlpZiAoIXdkZXYtPnBkYXRhLmdwaW9fd2FrZXVwIHx8IGdwaW9kX2dldF92YWx1ZSh3
ZGV2LT5wZGF0YS5ncGlvX3dha2V1cCkgPT0gMCkgeworCQlkZXZfd2Fybih3ZGV2LT5kZXYsICJ1
bmV4cGVjdGVkIHdha2UtdXAgaW5kaWNhdGlvblxuIik7CisJCXJldHVybiAtRUlPOworCX0KKwly
ZXR1cm4gMDsKK30KKworc3RhdGljIGludCB3ZnhfaGlmX3JlY2VpdmVfaW5kaWNhdGlvbihzdHJ1
Y3Qgd2Z4X2RldiAqd2RldiwgY29uc3Qgc3RydWN0IHdmeF9oaWZfbXNnICpoaWYsCisJCQkJICAg
ICAgY29uc3Qgdm9pZCAqYnVmLCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQoreworCXN0cnVjdCB3Znhf
dmlmICp3dmlmID0gd2Rldl90b193dmlmKHdkZXYsIGhpZi0+aW50ZXJmYWNlKTsKKwljb25zdCBz
dHJ1Y3Qgd2Z4X2hpZl9pbmRfcnggKmJvZHkgPSBidWY7CisKKwlpZiAoIXd2aWYpIHsKKwkJZGV2
X3dhcm4od2Rldi0+ZGV2LCAiJXM6IHJlY2VpdmVkIGV2ZW50IGZvciBub24tZXhpc3RlbnQgdmlm
XG4iLCBfX2Z1bmNfXyk7CisJCXJldHVybiAtRUlPOworCX0KKwlza2JfcHVsbChza2IsIHNpemVv
ZihzdHJ1Y3Qgd2Z4X2hpZl9tc2cpICsgc2l6ZW9mKHN0cnVjdCB3ZnhfaGlmX2luZF9yeCkpOwor
CXdmeF9yeF9jYih3dmlmLCBib2R5LCBza2IpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBp
bnQgd2Z4X2hpZl9ldmVudF9pbmRpY2F0aW9uKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LAorCQkJCSAg
ICBjb25zdCBzdHJ1Y3Qgd2Z4X2hpZl9tc2cgKmhpZiwgY29uc3Qgdm9pZCAqYnVmKQoreworCXN0
cnVjdCB3ZnhfdmlmICp3dmlmID0gd2Rldl90b193dmlmKHdkZXYsIGhpZi0+aW50ZXJmYWNlKTsK
Kwljb25zdCBzdHJ1Y3Qgd2Z4X2hpZl9pbmRfZXZlbnQgKmJvZHkgPSBidWY7CisJaW50IHR5cGUg
PSBsZTMyX3RvX2NwdShib2R5LT5ldmVudF9pZCk7CisKKwlpZiAoIXd2aWYpIHsKKwkJZGV2X3dh
cm4od2Rldi0+ZGV2LCAiJXM6IHJlY2VpdmVkIGV2ZW50IGZvciBub24tZXhpc3RlbnQgdmlmXG4i
LCBfX2Z1bmNfXyk7CisJCXJldHVybiAtRUlPOworCX0KKworCXN3aXRjaCAodHlwZSkgeworCWNh
c2UgSElGX0VWRU5UX0lORF9SQ1BJX1JTU0k6CisJCXdmeF9ldmVudF9yZXBvcnRfcnNzaSh3dmlm
LCBib2R5LT5ldmVudF9kYXRhLnJjcGlfcnNzaSk7CisJCWJyZWFrOworCWNhc2UgSElGX0VWRU5U
X0lORF9CU1NMT1NUOgorCQlzY2hlZHVsZV9kZWxheWVkX3dvcmsoJnd2aWYtPmJlYWNvbl9sb3Nz
X3dvcmssIDApOworCQlicmVhazsKKwljYXNlIEhJRl9FVkVOVF9JTkRfQlNTUkVHQUlORUQ6CisJ
CWNhbmNlbF9kZWxheWVkX3dvcmsoJnd2aWYtPmJlYWNvbl9sb3NzX3dvcmspOworCQlkZXZfZGJn
KHdkZXYtPmRldiwgImlnbm9yZSBCU1NSRUdBSU5FRCBpbmRpY2F0aW9uXG4iKTsKKwkJYnJlYWs7
CisJY2FzZSBISUZfRVZFTlRfSU5EX1BTX01PREVfRVJST1I6CisJCWRldl93YXJuKHdkZXYtPmRl
diwgImVycm9yIHdoaWxlIHByb2Nlc3NpbmcgcG93ZXIgc2F2ZSByZXF1ZXN0OiAlZFxuIiwKKwkJ
CSBsZTMyX3RvX2NwdShib2R5LT5ldmVudF9kYXRhLnBzX21vZGVfZXJyb3IpKTsKKwkJYnJlYWs7
CisJZGVmYXVsdDoKKwkJZGV2X3dhcm4od2Rldi0+ZGV2LCAidW5oYW5kbGVkIGV2ZW50IGluZGlj
YXRpb246ICUuMnhcbiIsIHR5cGUpOworCQlicmVhazsKKwl9CisJcmV0dXJuIDA7Cit9CisKK3N0
YXRpYyBpbnQgd2Z4X2hpZl9wbV9tb2RlX2NvbXBsZXRlX2luZGljYXRpb24oc3RydWN0IHdmeF9k
ZXYgKndkZXYsCisJCQkJCSAgICAgICBjb25zdCBzdHJ1Y3Qgd2Z4X2hpZl9tc2cgKmhpZiwgY29u
c3Qgdm9pZCAqYnVmKQoreworCXN0cnVjdCB3ZnhfdmlmICp3dmlmID0gd2Rldl90b193dmlmKHdk
ZXYsIGhpZi0+aW50ZXJmYWNlKTsKKworCWlmICghd3ZpZikgeworCQlkZXZfd2Fybih3ZGV2LT5k
ZXYsICIlczogcmVjZWl2ZWQgZXZlbnQgZm9yIG5vbi1leGlzdGVudCB2aWZcbiIsIF9fZnVuY19f
KTsKKwkJcmV0dXJuIC1FSU87CisJfQorCWNvbXBsZXRlKCZ3dmlmLT5zZXRfcG1fbW9kZV9jb21w
bGV0ZSk7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCB3ZnhfaGlmX3NjYW5fY29tcGxl
dGVfaW5kaWNhdGlvbihzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwKKwkJCQkJICAgIGNvbnN0IHN0cnVj
dCB3ZnhfaGlmX21zZyAqaGlmLCBjb25zdCB2b2lkICpidWYpCit7CisJc3RydWN0IHdmeF92aWYg
Knd2aWYgPSB3ZGV2X3RvX3d2aWYod2RldiwgaGlmLT5pbnRlcmZhY2UpOworCWNvbnN0IHN0cnVj
dCB3ZnhfaGlmX2luZF9zY2FuX2NtcGwgKmJvZHkgPSBidWY7CisKKwlpZiAoIXd2aWYpIHsKKwkJ
ZGV2X3dhcm4od2Rldi0+ZGV2LCAiJXM6IHJlY2VpdmVkIGV2ZW50IGZvciBub24tZXhpc3RlbnQg
dmlmXG4iLCBfX2Z1bmNfXyk7CisJCXJldHVybiAtRUlPOworCX0KKworCXdmeF9zY2FuX2NvbXBs
ZXRlKHd2aWYsIGJvZHktPm51bV9jaGFubmVsc19jb21wbGV0ZWQpOworCisJcmV0dXJuIDA7Cit9
CisKK3N0YXRpYyBpbnQgd2Z4X2hpZl9qb2luX2NvbXBsZXRlX2luZGljYXRpb24oc3RydWN0IHdm
eF9kZXYgKndkZXYsCisJCQkJCSAgICBjb25zdCBzdHJ1Y3Qgd2Z4X2hpZl9tc2cgKmhpZiwgY29u
c3Qgdm9pZCAqYnVmKQoreworCXN0cnVjdCB3ZnhfdmlmICp3dmlmID0gd2Rldl90b193dmlmKHdk
ZXYsIGhpZi0+aW50ZXJmYWNlKTsKKworCWlmICghd3ZpZikgeworCQlkZXZfd2Fybih3ZGV2LT5k
ZXYsICIlczogcmVjZWl2ZWQgZXZlbnQgZm9yIG5vbi1leGlzdGVudCB2aWZcbiIsIF9fZnVuY19f
KTsKKwkJcmV0dXJuIC1FSU87CisJfQorCWRldl93YXJuKHdkZXYtPmRldiwgInVuYXR0ZW5kZWQg
Sm9pbkNvbXBsZXRlSW5kXG4iKTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IHdmeF9o
aWZfc3VzcGVuZF9yZXN1bWVfaW5kaWNhdGlvbihzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwKKwkJCQkJ
ICAgICBjb25zdCBzdHJ1Y3Qgd2Z4X2hpZl9tc2cgKmhpZiwgY29uc3Qgdm9pZCAqYnVmKQorewor
CWNvbnN0IHN0cnVjdCB3ZnhfaGlmX2luZF9zdXNwZW5kX3Jlc3VtZV90eCAqYm9keSA9IGJ1ZjsK
KwlzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZjsKKworCWlmIChib2R5LT5iY19tY19vbmx5KSB7CisJCXd2
aWYgPSB3ZGV2X3RvX3d2aWYod2RldiwgaGlmLT5pbnRlcmZhY2UpOworCQlpZiAoIXd2aWYpIHsK
KwkJCWRldl93YXJuKHdkZXYtPmRldiwgIiVzOiByZWNlaXZlZCBldmVudCBmb3Igbm9uLWV4aXN0
ZW50IHZpZlxuIiwgX19mdW5jX18pOworCQkJcmV0dXJuIC1FSU87CisJCX0KKwkJaWYgKGJvZHkt
PnJlc3VtZSkKKwkJCXdmeF9zdXNwZW5kX3Jlc3VtZV9tYyh3dmlmLCBTVEFfTk9USUZZX0FXQUtF
KTsKKwkJZWxzZQorCQkJd2Z4X3N1c3BlbmRfcmVzdW1lX21jKHd2aWYsIFNUQV9OT1RJRllfU0xF
RVApOworCX0gZWxzZSB7CisJCVdBUk4oYm9keS0+cGVlcl9zdGFfc2V0LCAibWlzdW5kZXJzdG9v
ZCBpbmRpY2F0aW9uIik7CisJCVdBUk4oaGlmLT5pbnRlcmZhY2UgIT0gMiwgIm1pc3VuZGVyc3Rv
b2QgaW5kaWNhdGlvbiIpOworCQlpZiAoYm9keS0+cmVzdW1lKQorCQkJd2Z4X3N1c3BlbmRfaG90
X2Rldih3ZGV2LCBTVEFfTk9USUZZX0FXQUtFKTsKKwkJZWxzZQorCQkJd2Z4X3N1c3BlbmRfaG90
X2Rldih3ZGV2LCBTVEFfTk9USUZZX1NMRUVQKTsKKwl9CisKKwlyZXR1cm4gMDsKK30KKworc3Rh
dGljIGludCB3ZnhfaGlmX2dlbmVyaWNfaW5kaWNhdGlvbihzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwK
KwkJCQkgICAgICBjb25zdCBzdHJ1Y3Qgd2Z4X2hpZl9tc2cgKmhpZiwgY29uc3Qgdm9pZCAqYnVm
KQoreworCWNvbnN0IHN0cnVjdCB3ZnhfaGlmX2luZF9nZW5lcmljICpib2R5ID0gYnVmOworCWlu
dCB0eXBlID0gbGUzMl90b19jcHUoYm9keS0+dHlwZSk7CisKKwlzd2l0Y2ggKHR5cGUpIHsKKwlj
YXNlIEhJRl9HRU5FUklDX0lORElDQVRJT05fVFlQRV9SQVc6CisJCXJldHVybiAwOworCWNhc2Ug
SElGX0dFTkVSSUNfSU5ESUNBVElPTl9UWVBFX1NUUklORzoKKwkJZGV2X2luZm8od2Rldi0+ZGV2
LCAiZmlybXdhcmUgc2F5czogJXNcbiIsIChjaGFyICopJmJvZHktPmRhdGEpOworCQlyZXR1cm4g
MDsKKwljYXNlIEhJRl9HRU5FUklDX0lORElDQVRJT05fVFlQRV9SWF9TVEFUUzoKKwkJbXV0ZXhf
bG9jaygmd2Rldi0+cnhfc3RhdHNfbG9jayk7CisJCS8qIE9sZGVyIGZpcm13YXJlIHNlbmQgYSBn
ZW5lcmljIGluZGljYXRpb24gYmVzaWRlIFJ4U3RhdHMgKi8KKwkJaWYgKCF3ZnhfYXBpX29sZGVy
X3RoYW4od2RldiwgMSwgNCkpCisJCQlkZXZfaW5mbyh3ZGV2LT5kZXYsICJSeCB0ZXN0IG9uZ29p
bmcuIFRlbXBlcmF0dXJlOiAlZCBkZWdyZWVzIENcbiIsCisJCQkJIGJvZHktPmRhdGEucnhfc3Rh
dHMuY3VycmVudF90ZW1wKTsKKwkJbWVtY3B5KCZ3ZGV2LT5yeF9zdGF0cywgJmJvZHktPmRhdGEu
cnhfc3RhdHMsIHNpemVvZih3ZGV2LT5yeF9zdGF0cykpOworCQltdXRleF91bmxvY2soJndkZXYt
PnJ4X3N0YXRzX2xvY2spOworCQlyZXR1cm4gMDsKKwljYXNlIEhJRl9HRU5FUklDX0lORElDQVRJ
T05fVFlQRV9UWF9QT1dFUl9MT09QX0lORk86CisJCW11dGV4X2xvY2soJndkZXYtPnR4X3Bvd2Vy
X2xvb3BfaW5mb19sb2NrKTsKKwkJbWVtY3B5KCZ3ZGV2LT50eF9wb3dlcl9sb29wX2luZm8sICZi
b2R5LT5kYXRhLnR4X3Bvd2VyX2xvb3BfaW5mbywKKwkJICAgICAgIHNpemVvZih3ZGV2LT50eF9w
b3dlcl9sb29wX2luZm8pKTsKKwkJbXV0ZXhfdW5sb2NrKCZ3ZGV2LT50eF9wb3dlcl9sb29wX2lu
Zm9fbG9jayk7CisJCXJldHVybiAwOworCWRlZmF1bHQ6CisJCWRldl9lcnIod2Rldi0+ZGV2LCAi
Z2VuZXJpY19pbmRpY2F0aW9uOiB1bmtub3duIGluZGljYXRpb24gdHlwZTogJSMuOHhcbiIsCisJ
CQl0eXBlKTsKKwkJcmV0dXJuIC1FSU87CisJfQorfQorCitzdGF0aWMgY29uc3Qgc3RydWN0IHsK
KwlpbnQgdmFsOworCWNvbnN0IGNoYXIgKnN0cjsKKwlib29sIGhhc19wYXJhbTsKK30gaGlmX2Vy
cm9yc1tdID0geworCXsgSElGX0VSUk9SX0ZJUk1XQVJFX1JPTExCQUNLLAorCQkicm9sbGJhY2sg
c3RhdHVzIiB9LAorCXsgSElGX0VSUk9SX0ZJUk1XQVJFX0RFQlVHX0VOQUJMRUQsCisJCSJkZWJ1
ZyBmZWF0dXJlIGVuYWJsZWQiIH0sCisJeyBISUZfRVJST1JfUERTX1BBWUxPQUQsCisJCSJQRFMg
dmVyc2lvbiBpcyBub3Qgc3VwcG9ydGVkIiB9LAorCXsgSElGX0VSUk9SX1BEU19URVNURkVBVFVS
RSwKKwkJIlBEUyBhc2sgZm9yIGFuIHVua25vd24gdGVzdCBtb2RlIiB9LAorCXsgSElGX0VSUk9S
X09PUl9WT0xUQUdFLAorCQkib3V0LW9mLXJhbmdlIHBvd2VyIHN1cHBseSB2b2x0YWdlIiwgdHJ1
ZSB9LAorCXsgSElGX0VSUk9SX09PUl9URU1QRVJBVFVSRSwKKwkJIm91dC1vZi1yYW5nZSB0ZW1w
ZXJhdHVyZSIsIHRydWUgfSwKKwl7IEhJRl9FUlJPUl9TTEtfUkVRX0RVUklOR19LRVlfRVhDSEFO
R0UsCisJCSJzZWN1cmUgbGluayBkb2VzIG5vdCBleHBlY3QgcmVxdWVzdCBkdXJpbmcga2V5IGV4
Y2hhbmdlIiB9LAorCXsgSElGX0VSUk9SX1NMS19TRVNTSU9OX0tFWSwKKwkJInNlY3VyZSBsaW5r
IHNlc3Npb24ga2V5IGlzIGludmFsaWQiIH0sCisJeyBISUZfRVJST1JfU0xLX09WRVJGTE9XLAor
CQkic2VjdXJlIGxpbmsgb3ZlcmZsb3ciIH0sCisJeyBISUZfRVJST1JfU0xLX1dST05HX0VOQ1JZ
UFRJT05fU1RBVEUsCisJCSJzZWN1cmUgbGluayBtZXNzYWdlcyBsaXN0IGRvZXMgbm90IG1hdGNo
IG1lc3NhZ2UgZW5jcnlwdGlvbiIgfSwKKwl7IEhJRl9FUlJPUl9TTEtfVU5DT05GSUdVUkVELAor
CQkic2VjdXJlIGxpbmsgbm90IHlldCBjb25maWd1cmVkIiB9LAorCXsgSElGX0VSUk9SX0hJRl9C
VVNfRlJFUVVFTkNZX1RPT19MT1csCisJCSJidXMgY2xvY2sgaXMgdG9vIHNsb3cgKDwxa0h6KSIg
fSwKKwl7IEhJRl9FUlJPUl9ISUZfUlhfREFUQV9UT09fTEFSR0UsCisJCSJISUYgbWVzc2FnZSB0
b28gbGFyZ2UiIH0sCisJLyogRm9sbG93aW5nIGVycm9ycyBvbmx5IGV4aXN0cyBpbiBvbGQgZmly
bXdhcmUgdmVyc2lvbnM6ICovCisJeyBISUZfRVJST1JfSElGX1RYX1FVRVVFX0ZVTEwsCisJCSJI
SUYgbWVzc2FnZXMgcXVldWUgaXMgZnVsbCIgfSwKKwl7IEhJRl9FUlJPUl9ISUZfQlVTLAorCQki
SElGIGJ1cyIgfSwKKwl7IEhJRl9FUlJPUl9TTEtfTVVMVElfVFhfVU5TVVBQT1JURUQsCisJCSJz
ZWN1cmUgbGluayBkb2VzIG5vdCBzdXBwb3J0IG11bHRpLXR4IGNvbmZpcm1hdGlvbnMiIH0sCisJ
eyBISUZfRVJST1JfU0xLX09VVERBVEVEX1NFU1NJT05fS0VZLAorCQkic2VjdXJlIGxpbmsgc2Vz
c2lvbiBrZXkgaXMgb3V0ZGF0ZWQiIH0sCisJeyBISUZfRVJST1JfU0xLX0RFQ1JZUFRJT04sCisJ
CSJzZWN1cmUgbGluayBwYXJhbXMgKG5vbmNlIG9yIHRhZykgbWlzbWF0Y2giIH0sCit9OworCitz
dGF0aWMgaW50IHdmeF9oaWZfZXJyb3JfaW5kaWNhdGlvbihzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwK
KwkJCQkgICAgY29uc3Qgc3RydWN0IHdmeF9oaWZfbXNnICpoaWYsIGNvbnN0IHZvaWQgKmJ1ZikK
K3sKKwljb25zdCBzdHJ1Y3Qgd2Z4X2hpZl9pbmRfZXJyb3IgKmJvZHkgPSBidWY7CisJaW50IHR5
cGUgPSBsZTMyX3RvX2NwdShib2R5LT50eXBlKTsKKwlpbnQgcGFyYW0gPSAoczgpYm9keS0+ZGF0
YVswXTsKKwlpbnQgaTsKKworCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGhpZl9lcnJvcnMp
OyBpKyspCisJCWlmICh0eXBlID09IGhpZl9lcnJvcnNbaV0udmFsKQorCQkJYnJlYWs7CisJaWYg
KGkgPCBBUlJBWV9TSVpFKGhpZl9lcnJvcnMpKQorCQlpZiAoaGlmX2Vycm9yc1tpXS5oYXNfcGFy
YW0pCisJCQlkZXZfZXJyKHdkZXYtPmRldiwgImFzeW5jaHJvbm91cyBlcnJvcjogJXM6ICVkXG4i
LAorCQkJCWhpZl9lcnJvcnNbaV0uc3RyLCBwYXJhbSk7CisJCWVsc2UKKwkJCWRldl9lcnIod2Rl
di0+ZGV2LCAiYXN5bmNocm9ub3VzIGVycm9yOiAlc1xuIiwgaGlmX2Vycm9yc1tpXS5zdHIpOwor
CWVsc2UKKwkJZGV2X2Vycih3ZGV2LT5kZXYsICJhc3luY2hyb25vdXMgZXJyb3I6IHVua25vd246
ICUwOHhcbiIsIHR5cGUpOworCXByaW50X2hleF9kdW1wKEtFUk5fSU5GTywgImhpZjogIiwgRFVN
UF9QUkVGSVhfT0ZGU0VULAorCQkgICAgICAgMTYsIDEsIGhpZiwgbGUxNl90b19jcHUoaGlmLT5s
ZW4pLCBmYWxzZSk7CisJd2Rldi0+Y2hpcF9mcm96ZW4gPSB0cnVlOworCisJcmV0dXJuIDA7Cit9
OworCitzdGF0aWMgaW50IHdmeF9oaWZfZXhjZXB0aW9uX2luZGljYXRpb24oc3RydWN0IHdmeF9k
ZXYgKndkZXYsCisJCQkJCWNvbnN0IHN0cnVjdCB3ZnhfaGlmX21zZyAqaGlmLCBjb25zdCB2b2lk
ICpidWYpCit7CisJY29uc3Qgc3RydWN0IHdmeF9oaWZfaW5kX2V4Y2VwdGlvbiAqYm9keSA9IGJ1
ZjsKKwlpbnQgdHlwZSA9IGxlMzJfdG9fY3B1KGJvZHktPnR5cGUpOworCisJaWYgKHR5cGUgPT0g
NCkKKwkJZGV2X2Vycih3ZGV2LT5kZXYsICJmaXJtd2FyZSBhc3NlcnQgJWRcbiIsIGxlMzJfdG9f
Y3B1cCgoX19sZTMyICopYm9keS0+ZGF0YSkpOworCWVsc2UKKwkJZGV2X2Vycih3ZGV2LT5kZXYs
ICJmaXJtd2FyZSBleGNlcHRpb25cbiIpOworCXByaW50X2hleF9kdW1wKEtFUk5fSU5GTywgImhp
ZjogIiwgRFVNUF9QUkVGSVhfT0ZGU0VULAorCQkgICAgICAgMTYsIDEsIGhpZiwgbGUxNl90b19j
cHUoaGlmLT5sZW4pLCBmYWxzZSk7CisJd2Rldi0+Y2hpcF9mcm96ZW4gPSB0cnVlOworCisJcmV0
dXJuIC0xOworfQorCitzdGF0aWMgY29uc3Qgc3RydWN0IHsKKwlpbnQgbXNnX2lkOworCWludCAo
KmhhbmRsZXIpKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBjb25zdCBzdHJ1Y3Qgd2Z4X2hpZl9tc2cg
KmhpZiwgY29uc3Qgdm9pZCAqYnVmKTsKK30gaGlmX2hhbmRsZXJzW10gPSB7CisJLyogQ29uZmly
bWF0aW9ucyAqLworCXsgSElGX0NORl9JRF9UWCwgICAgICAgICAgICAgICAgd2Z4X2hpZl90eF9j
b25maXJtIH0sCisJeyBISUZfQ05GX0lEX01VTFRJX1RSQU5TTUlULCAgICB3ZnhfaGlmX211bHRp
X3R4X2NvbmZpcm0gfSwKKwkvKiBJbmRpY2F0aW9ucyAqLworCXsgSElGX0lORF9JRF9TVEFSVFVQ
LCAgICAgICAgICAgd2Z4X2hpZl9zdGFydHVwX2luZGljYXRpb24gfSwKKwl7IEhJRl9JTkRfSURf
V0FLRVVQLCAgICAgICAgICAgIHdmeF9oaWZfd2FrZXVwX2luZGljYXRpb24gfSwKKwl7IEhJRl9J
TkRfSURfSk9JTl9DT01QTEVURSwgICAgIHdmeF9oaWZfam9pbl9jb21wbGV0ZV9pbmRpY2F0aW9u
IH0sCisJeyBISUZfSU5EX0lEX1NFVF9QTV9NT0RFX0NNUEwsICB3ZnhfaGlmX3BtX21vZGVfY29t
cGxldGVfaW5kaWNhdGlvbiB9LAorCXsgSElGX0lORF9JRF9TQ0FOX0NNUEwsICAgICAgICAgd2Z4
X2hpZl9zY2FuX2NvbXBsZXRlX2luZGljYXRpb24gfSwKKwl7IEhJRl9JTkRfSURfU1VTUEVORF9S
RVNVTUVfVFgsIHdmeF9oaWZfc3VzcGVuZF9yZXN1bWVfaW5kaWNhdGlvbiB9LAorCXsgSElGX0lO
RF9JRF9FVkVOVCwgICAgICAgICAgICAgd2Z4X2hpZl9ldmVudF9pbmRpY2F0aW9uIH0sCisJeyBI
SUZfSU5EX0lEX0dFTkVSSUMsICAgICAgICAgICB3ZnhfaGlmX2dlbmVyaWNfaW5kaWNhdGlvbiB9
LAorCXsgSElGX0lORF9JRF9FUlJPUiwgICAgICAgICAgICAgd2Z4X2hpZl9lcnJvcl9pbmRpY2F0
aW9uIH0sCisJeyBISUZfSU5EX0lEX0VYQ0VQVElPTiwgICAgICAgICB3ZnhfaGlmX2V4Y2VwdGlv
bl9pbmRpY2F0aW9uIH0sCisJLyogRklYTUU6IGFsbG9jYXRlIHNrYl9wIGZyb20gd2Z4X2hpZl9y
ZWNlaXZlX2luZGljYXRpb24gYW5kIG1ha2UgaXQgZ2VuZXJpYyAqLworCS8veyBISUZfSU5EX0lE
X1JYLCAgICAgICAgICAgICAgd2Z4X2hpZl9yZWNlaXZlX2luZGljYXRpb24gfSwKK307CisKK3Zv
aWQgd2Z4X2hhbmRsZV9yeChzdHJ1Y3Qgd2Z4X2RldiAqd2Rldiwgc3RydWN0IHNrX2J1ZmYgKnNr
YikKK3sKKwlpbnQgaTsKKwljb25zdCBzdHJ1Y3Qgd2Z4X2hpZl9tc2cgKmhpZiA9IChjb25zdCBz
dHJ1Y3Qgd2Z4X2hpZl9tc2cgKilza2ItPmRhdGE7CisJaW50IGhpZl9pZCA9IGhpZi0+aWQ7CisK
KwlpZiAoaGlmX2lkID09IEhJRl9JTkRfSURfUlgpIHsKKwkJLyogd2Z4X2hpZl9yZWNlaXZlX2lu
ZGljYXRpb24gdGFrZSBjYXJlIG9mIHNrYiBsaWZldGltZSAqLworCQl3ZnhfaGlmX3JlY2VpdmVf
aW5kaWNhdGlvbih3ZGV2LCBoaWYsIGhpZi0+Ym9keSwgc2tiKTsKKwkJcmV0dXJuOworCX0KKwkv
KiBOb3RlOiBtdXRleF9pc19sb2NrIGNhdXNlIGFuIGltcGxpY2l0IG1lbW9yeSBiYXJyaWVyIHRo
YXQgcHJvdGVjdCBidWZfc2VuZCAqLworCWlmIChtdXRleF9pc19sb2NrZWQoJndkZXYtPmhpZl9j
bWQubG9jaykgJiYKKwkgICAgd2Rldi0+aGlmX2NtZC5idWZfc2VuZCAmJiB3ZGV2LT5oaWZfY21k
LmJ1Zl9zZW5kLT5pZCA9PSBoaWZfaWQpIHsKKwkJd2Z4X2hpZl9nZW5lcmljX2NvbmZpcm0od2Rl
diwgaGlmLCBoaWYtPmJvZHkpOworCQlnb3RvIGZyZWU7CisJfQorCWZvciAoaSA9IDA7IGkgPCBB
UlJBWV9TSVpFKGhpZl9oYW5kbGVycyk7IGkrKykgeworCQlpZiAoaGlmX2hhbmRsZXJzW2ldLm1z
Z19pZCA9PSBoaWZfaWQpIHsKKwkJCWlmIChoaWZfaGFuZGxlcnNbaV0uaGFuZGxlcikKKwkJCQlo
aWZfaGFuZGxlcnNbaV0uaGFuZGxlcih3ZGV2LCBoaWYsIGhpZi0+Ym9keSk7CisJCQlnb3RvIGZy
ZWU7CisJCX0KKwl9CisJaWYgKGhpZl9pZCAmIEhJRl9JRF9JU19JTkRJQ0FUSU9OKQorCQlkZXZf
ZXJyKHdkZXYtPmRldiwgInVuc3VwcG9ydGVkIEhJRiBpbmRpY2F0aW9uOiBJRCAlMDJ4XG4iLCBo
aWZfaWQpOworCWVsc2UKKwkJZGV2X2Vycih3ZGV2LT5kZXYsICJ1bmV4cGVjdGVkIEhJRiBjb25m
aXJtYXRpb246IElEICUwMnhcbiIsIGhpZl9pZCk7CitmcmVlOgorCWRldl9rZnJlZV9za2Ioc2ti
KTsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvaGlmX3J4
LmggYi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2hpZl9yeC5oCm5ldyBmaWxlIG1v
ZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uOTY1NDNiODFmYTc3Ci0tLSAvZGV2L251bGwK
KysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9oaWZfcnguaApAQCAtMCwwICsx
LDE3IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5ICovCisvKgor
ICogSGFuZGxpbmcgb2YgdGhlIGNoaXAtdG8taG9zdCBldmVudHMgKGFrYSBpbmRpY2F0aW9ucykg
b2YgdGhlIGhhcmR3YXJlIEFQSS4KKyAqCisgKiBDb3B5cmlnaHQgKGMpIDIwMTctMjAxOSwgU2ls
aWNvbiBMYWJvcmF0b3JpZXMsIEluYy4KKyAqIENvcHlyaWdodCAoYykgMjAxMCwgU1QtRXJpY3Nz
b24KKyAqIENvcHlyaWdodCAoQykgMjAxMCwgU1QtRXJpY3Nzb24gU0EKKyAqLworI2lmbmRlZiBX
RlhfSElGX1JYX0gKKyNkZWZpbmUgV0ZYX0hJRl9SWF9ICisKK3N0cnVjdCB3ZnhfZGV2Oworc3Ry
dWN0IHNrX2J1ZmY7CisKK3ZvaWQgd2Z4X2hhbmRsZV9yeChzdHJ1Y3Qgd2Z4X2RldiAqd2Rldiwg
c3RydWN0IHNrX2J1ZmYgKnNrYik7CisKKyNlbmRpZgotLSAKMi4zNC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
