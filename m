Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5824086A6
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Sep 2021 10:32:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF266401EF;
	Mon, 13 Sep 2021 08:32:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CvsY2LvVSipB; Mon, 13 Sep 2021 08:32:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BAF88401F9;
	Mon, 13 Sep 2021 08:32:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 13D761BF389
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 08:31:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B1889605D8
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 08:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id odY3sTpXQfOv for <devel@linuxdriverproject.org>;
 Mon, 13 Sep 2021 08:31:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2076.outbound.protection.outlook.com [40.107.243.76])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 251DC6060A
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 08:31:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B1sxZ68h92CAs/G4ibADC/jmmbP7enwjpALaJ3Ye05m/lGlboS8IEexZAbA9JkAwjXsfvQ9Ri7YMRE67eEwqUquvgk4KmEuNy9SMmCEkIGT9jL8Dm0ts26Q/oXjYVKFK3Y4VDpNcpFW+S6tGLzgwVcXo2cM4L6d8CdDHMZ6JfuaEWyPHJ5m1uA7zxL1ZwklnaXPC/rOdHQnDAifo9l0vWdcoBV2HVX/KDyQiC67pctXmNA0VV2YEUXvQse6kw/fmjnSYRNgK56WCqVDaqicvkpoQkgtutP5Lfk1EndzpOwYegKocezayYk/aqV9zIxWhOQto8LpYgOgshXVzGf0N4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=6X5C8iiyie5c+H0xNzgV2k5OxRmd70FdYQimieF/nBc=;
 b=AGTXtyow4mo9ENf2vvCwWPwv8CRkwvmsGu+rGvufi0ZUPZpmJs7WfEpFmTtfLKuc13oI1E7ZxbOm+gxytXOjfRR0//Lmj3/IR6tIE61GuLUbLEiHIpgTwC+4TXfBsFGdvSTXqbw2rlGvDeqdatkc9QXl8ezPcOFo1qq9gSDSBQKKtSq84h5jThjOw7x9TfqsIBA4MhAi0FLy4Bp0dRn4PUjbfVzTcJ5CoKcqMWFxUQliDQEnkb5PzjHDoTqVUSPi/u/jCA7A7NSdLSLhsepbhkZKb/TDConZt639vt8dRsEajCsRA6BWrbVXo2dzJUIPTHleCDd+h+05gvbcwje7Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6X5C8iiyie5c+H0xNzgV2k5OxRmd70FdYQimieF/nBc=;
 b=QqTxgbsLDZMoLsjir0E763d47zN/GqfuXSJ3+d1W9yjUO45PEVlDT6VY6F2KQsChIZPJGt2Q7Js5wiw8PvHCO7z7zvMXCpn3+2Spuvq3TZcTTdXAXZ8Sv+5DXJ1qM0N5gnVmbdmwERIzRTlaR2jVqKsrTNHWY0RLAkivX7WiKl4=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (52.135.97.18) by
 SN6PR11MB3263.namprd11.prod.outlook.com (52.135.109.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.18; Mon, 13 Sep 2021 08:31:46 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Mon, 13 Sep 2021
 08:31:46 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH v2 07/33] staging: wfx: fix atomic accesses in
 wfx_tx_queue_empty()
Date: Mon, 13 Sep 2021 10:30:19 +0200
Message-Id: <20210913083045.1881321-8-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210913083045.1881321-1-Jerome.Pouiller@silabs.com>
References: <20210913083045.1881321-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PAZP264CA0067.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1fd::10) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
Received: from pc-42.silabs.com (37.71.187.125) by
 PAZP264CA0067.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1fd::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 08:31:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1ae7e1df-960e-44f7-713d-08d97690daa0
X-MS-TrafficTypeDiagnostic: SN6PR11MB3263:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB3263EA73A1F1912D62F298FF93D99@SN6PR11MB3263.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:813;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: suHJp/PtkfI7et1wbWLy2wyMWGbkngKLdaima1MCo6FGmEKqy0pjf6bDUz/p4XNSvt30JosL/oaHCZf8xkXVgg+3TLy/4J9kc6KBFqhQ+W2jGF2E10NrDXh6D4gktfvGoebYkl80Q0p4KU3GEhrV3YyP8wXwCLek65rAyP/i97SXfFNK0/hFZr9mHpc8I1+GQ1Ifc8jQprCicXgQ1aX9peHtzSKGEgPjMQ+9W6GJzs27wAAoVUkJXxU+kUDFTryHKJiJDh1+tYGcOoXhyfJYSgUjdFCy+P4TLfunXVn419P4I3v7CtnBv6r4KnjinlwUJHPlW/1g1bNpK+jh0ku9zc3kIBCewcEAFiIzE0SLG+xa6uciqDo7NLmrCAIpLRQJ2a43r6AmaVUPa0p027emRfclp1R0bxBkFtACUsTqZtZ7MhVx1860T8ZsQyW6D/1B5O6Shc+OG4u8rZe6i9XRwFFaFi8uXyIYK5za8urrlBQvZXBQF5IOipL554fOxNBiMKqbRY8ZZInMl+C8+3bC6sEmptgvJq9CyDRTwSvS+apso67HUmfWWL+fLGoRyvjMnp8vb6TVNkEdxGUmCtV4xbA+oKmohi9KTqoymxXDSrkjtmDk28fxdNqJTVPe960IvZBmEf9RoWcegUzn4q5OS5G7jdkLh4GDBcvusgienivDrjEkh6JU7439wc+siVYW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(66574015)(107886003)(956004)(2616005)(5660300002)(54906003)(38350700002)(4326008)(316002)(38100700002)(66946007)(26005)(66476007)(66556008)(186003)(8676002)(36756003)(8936002)(86362001)(4744005)(508600001)(52116002)(7696005)(6486002)(1076003)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnkwaEJ1OXJZdzJuaW9hWjFDWHdSRnUzTkp5MWVTMWlFR3N5d1hVZjdoL1B6?=
 =?utf-8?B?UE4zdTdDQWEzUU5QMUlTd3Q0VmtrZS9zQ1RNYVQrTVlZZHF3ZzV2SS9PdWpH?=
 =?utf-8?B?aG9mc1ZHRzZLWkM4Uk5sWnZYQkdnQWZFRHB2Z1ZBS3IzWVlITDY5VWVRcDdK?=
 =?utf-8?B?U0c0ZG0zSUhFMU5Ub1hxR3VnRlZvbDNQMWc5cGhGd0dSZzFMNjZTKzlpZUdD?=
 =?utf-8?B?dS8vUTFYdzV0amdhWEVGVDJhL2VjYmZTazRHVnNUUmFMNDJxaXBRZ3RaalRh?=
 =?utf-8?B?eGY3VjhxYUsvRUFtK2VxODJTV2F4YWU4TjVhOVpHZXBsdEhrWmVnU1JHYXVX?=
 =?utf-8?B?QmFSK0t2TmpzL0VXS0haNmZqSjdCMFFpMk0xdGJCSE1aK3gzOEdNbnk4L1hY?=
 =?utf-8?B?OUhDRUdsOGlGWkkxR2xZYjNUUnFCeTZGL0d6WkdiRktsZ0R3SFUxRllLYWpF?=
 =?utf-8?B?Y3A0RHJBazY1RmcxVEg1dUg5TVJ6K2Zyci8xeE0yMncyZWtVWEppcVU4NSt6?=
 =?utf-8?B?RFhIeEV1WFYrZUkzQmg0N292VXlqUUxJM2M1VElGQnJXTHY2Y1Z5bE9UQ0h3?=
 =?utf-8?B?MGw4YTIrSzdGd3VJa0dwcmRBTGZ3aVpGNlRuT1VlSzJoQUs1dlM3M3FIb28w?=
 =?utf-8?B?aXR6ZG1BMmlWQjNHNlNZZ0dBamV4T1NIUGFQeG96Q2NBWXA0YW9KUENIZ0pH?=
 =?utf-8?B?T1hTa1hqK0d2dFJRRFhaVU50QXQvVjFOY0MrNlhwbWd3ZWhwelRnVFlWbUxB?=
 =?utf-8?B?eEszaHRZd2dQdHBPOGNoalRZUzJJOTVxSUNueEV1TG5rTlRGTVVkL2k0aVMw?=
 =?utf-8?B?elo1K2JwSFdzYjhyWWhnSVdybEdIckFjSHgvWXZkemVoOTI4TXFiOW8rWVFR?=
 =?utf-8?B?b0ovcTZjbmd4bkc5L3FweXgyNUk3U3Rnd3lRQ2plZUhubTloWTdYbXZyRytE?=
 =?utf-8?B?dWEvVGlJM0lGWElVNzdnOU1tVkVxMWpkY2pQZGhKMW1zRk03dXZhaGNCeUcy?=
 =?utf-8?B?TmxNclpEekRCQ3lYNEdyVnA5TTFEdkxhUTNjajlPU3E5TVdqczdwU01Qblo2?=
 =?utf-8?B?cDhSdE5GNWIrV04zNjRiNHZnaDFwZlVpanFmVno1bE54dHpaN1diMWZoaUxS?=
 =?utf-8?B?WHczNlJYOXdNUWRnZk9iVU1PRDVySnovbHhWTXE5aEluMWFDVVRhaU45cjVL?=
 =?utf-8?B?NmZHZ1BFRmx2akQ5MzFsZlNTZzZCYUJxYmpVVk5jbDlGZC9IQXViSStXdUxu?=
 =?utf-8?B?UFNEM2lNTVlhbktLcWtteVNNOTZxQ1BuYjJmQVZRZ3BhdlJsaS9JamxTaUo3?=
 =?utf-8?B?YkZaRDRFdlNMZmRCV1BmQ0tZMzk2TG1iU3htSDU3YUpiU01IbDNNR0VCekY2?=
 =?utf-8?B?M28ycCtLWWNweTVtOXdIM1phY3VnVldlQjV0NTRnemd3U2M2MDlIL0tEemxD?=
 =?utf-8?B?Mk82S3NpMG00cmRjZ2w3eUhhNFplMnlCWU5ZZU02UnFBWEl6a1R0Vm9reGZx?=
 =?utf-8?B?T3NrVkhJRmV1Y0haTXE1L3Yzd3kybzg3TXJNaFp6WU9mRGgzcFlQa0ZwSjlx?=
 =?utf-8?B?UVI1R2VlSkhwcDhXd0VnUVcrVk5BT084YUdRNzNkT1NxV0hYWWEzN3R3bU1s?=
 =?utf-8?B?S21TbEVENFhzSzd5VlJjVnJpZmpXcHlJT1ZhSXVXRkRoU2U3RGdvcXY5NDVr?=
 =?utf-8?B?MWN6aXJtQ3FwQ2YyMGF6M0kyWkdudWdrSUNxUml3aWJEWVFLRmVYY2lsZ24y?=
 =?utf-8?Q?MT3LncYw17ySfQhRaSaEOFqqekumpSNUMArV4VU?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ae7e1df-960e-44f7-713d-08d97690daa0
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 08:31:16.7570 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o3HFfRCAKjHstM4vp92X8EHmBwwfo3+XN9cYzfo4d6EMMW3IR5WhqQpHW7AzcpMDlES/kuiURyWIXwzIffG7/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3263
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKQ2hl
Y2tpbmcgaWYgYSBza2JfcXVldWUgaXMgZW1wdHkgaXMgbm90IGFuIGF0b21pYyBvcGVyYXRpb24u
IFdlIHNob3VsZAp0YWtlIHNvbWUgcHJlY2F1dGlvbnMgdG8gZG8gaXQuCgpTaWduZWQtb2ZmLWJ5
OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0tLQogZHJp
dmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4
L3F1ZXVlLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmMKaW5kZXggMzFjMzdmNjljMjk1
Li5mYTI3MmMxMjBmMWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvcXVldWUuYwor
KysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmMKQEAgLTg2LDcgKzg2LDggQEAgdm9pZCB3
ZnhfdHhfcXVldWVzX2NoZWNrX2VtcHR5KHN0cnVjdCB3ZnhfdmlmICp3dmlmKQogCiBib29sIHdm
eF90eF9xdWV1ZV9lbXB0eShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IHdmeF9xdWV1ZSAq
cXVldWUpCiB7Ci0JcmV0dXJuIHNrYl9xdWV1ZV9lbXB0eSgmcXVldWUtPm5vcm1hbCkgJiYgc2ti
X3F1ZXVlX2VtcHR5KCZxdWV1ZS0+Y2FiKTsKKwlyZXR1cm4gc2tiX3F1ZXVlX2VtcHR5X2xvY2ts
ZXNzKCZxdWV1ZS0+bm9ybWFsKSAmJgorCSAgICAgICBza2JfcXVldWVfZW1wdHlfbG9ja2xlc3Mo
JnF1ZXVlLT5jYWIpOwogfQogCiBzdGF0aWMgdm9pZCBfX3dmeF90eF9xdWV1ZV9kcm9wKHN0cnVj
dCB3ZnhfdmlmICp3dmlmLAotLSAKMi4zMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
