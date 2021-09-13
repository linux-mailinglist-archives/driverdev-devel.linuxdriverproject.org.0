Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4734086BD
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Sep 2021 10:33:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F89E606A3;
	Mon, 13 Sep 2021 08:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iofDQ6KLK79t; Mon, 13 Sep 2021 08:33:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29B61605E4;
	Mon, 13 Sep 2021 08:33:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9AB01BF389
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 08:31:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7845401F1
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 08:31:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZpO6hLpQYG5j for <devel@linuxdriverproject.org>;
 Mon, 13 Sep 2021 08:31:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2085.outbound.protection.outlook.com [40.107.243.85])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F8C5401EF
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 08:31:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WYkxttvXS18OGCThcsxRNxhQMug8/g6VPa6Xusns1tDw2zp6+LwRbd9AOXXEdknSJA8BI6fmnmoKr54cATz6jmKHEnKrk8tNVFHc+bFxmA9SQGVFVwYRwvP9kisX9I5/Pu28dlytJlyYPIoqne1kmzSte1AQcC6/osa7n7SDyUGZaaZNF0uVWMq/S8y94lF2DyfocmWbLf9sBEztzHfJ5nkjhN7mPPBwU6+khPDK5lT/Z3iijFfIoi3WEHjJ+M1mnh8L7abRmtH6DNYIc1ROCAuZRA6TDnenocWap0IzXCsoxNlecJUzuP6w/mZME/dWGvE7SqgyERmfdNvv6086Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=irK1qzipT3QHIWJf6rEuMgUX9uURfiAS1g+yt6uFeLc=;
 b=hSx7zTQrhF9cznnQEQJZ5TzLSiaVXvIqDoUm1RieuqtVcMwGLg1QtGB+DW88+qjVD6apAEaIs6QTrsIsUyoEQGwD8YlJ8uoyk5SFWkZtgWX4knUrRdoONaP1Ouq1l3avskJnahD+CF5ir9IJPdKCys+iE/9rkpvmLz7vcFcEgr2YUYMf81fkhgVfdtQdMqzZUpI6ODKMyLrrVZh58ou1+cMKIELN/vEncJ7ziNfQkV5ntK632lM63GpraBPYgmmfrvRIVBGTXVPrr98YlmeJzsC9dBeGtdgolC3COefo/+SXlXdImDw1WfsTmhimN2FLwfn/cMNT5yTcEb1yODugqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=irK1qzipT3QHIWJf6rEuMgUX9uURfiAS1g+yt6uFeLc=;
 b=N+sn/6owAZRnfUX9MqnPgJ9EQHi7TLCxj8kFSEvS0UsCbghmxgUpkoPCYxOyCCTplVjdTgZ37/brh/BerjFBzCwzt5GEhudsCHNMZYhpt330eLewuYvN8pgHotYhsmQeFdREKiFnsysBbAX6bQC2pVsiT0mgKynTSuKNd+w0Zj8=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (52.135.97.18) by
 SN6PR11MB3263.namprd11.prod.outlook.com (52.135.109.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.18; Mon, 13 Sep 2021 08:31:50 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Mon, 13 Sep 2021
 08:31:50 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH v2 11/33] staging: wfx: relax the PDS existence constraint
Date: Mon, 13 Sep 2021 10:30:23 +0200
Message-Id: <20210913083045.1881321-12-Jerome.Pouiller@silabs.com>
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
 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 08:31:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bdf9e4cf-1623-4ef1-cfc5-08d97690def4
X-MS-TrafficTypeDiagnostic: SN6PR11MB3263:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB3263F8DA083788D953E57C9293D99@SN6PR11MB3263.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2150;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OZ7lxQt5+joGZb7vZlQxG6aiW9e8rb1/S9UNUQYyk0o7NSsnxw5gcXKXeUo00yuSHyBCePmF2s6W8VQJ8Ub4jwxPWHkni2+CNSPgjo7gH9rtzSxNUXkvCdX5/cLoiuyGI/q+rnlE9ZuPOs4UlMWIELRgPrrTML3t/30A0WUfFpSQ8Avn4ixJLBjCy3xhTSwnbZT1w9FQORbQjY3cYVnd7MQX23oU1+CWqR6pC8XaHvdZhNZhXPr+KKHiDArb0M7Gw/iJ36PMJpBWltwajqP5CqwEElcCWdHDv2j7sjVMORzvUlZ3G2UkrX+U7MpRgijqKvNqokeKJlHrPw4To4odoL7+PvAyWVfIkaC7zrTwmIM76ZhVAEoV1S4D/ZPE26xpXomxkUvIsYgsd+z6trH5rCbkVkqL05XchCyW0PkFZpY9G9Gxpfh2r/1LGvKZ5+oFKoMLP5b7sNR4AkoWMjCLhU8NZeBe6Wm0zxCHYjz51jma2y4EFRCObmV3auMOg9Exbf0affje+PX8AlMrzPm2jB8MCEqcNiff6N4nChQdsZPVN/0cAuHtmKMq5LwgqWLdfh6kXS9DTYrSPgDj/8GJapfh+Oa1WXoFaLo6IqS7lJF4kfCedkD8YOhjAFcyW5B5+ezgVqfy7iLAmwAwgl9T05ZSf501yZxUaL4iyTWsbMkp0HtgzBJ0z+tRMrJFgMsi9YMKu0sZUZEh96aOiTC7fA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(66574015)(107886003)(956004)(2616005)(5660300002)(54906003)(38350700002)(4326008)(316002)(38100700002)(66946007)(26005)(66476007)(66556008)(186003)(8676002)(36756003)(8936002)(86362001)(508600001)(52116002)(7696005)(6486002)(1076003)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXZrY0x6Q0hCRWZzZ21ROHRQTWRKS0Z0eTJwdjYzNGgxUlEvMUJDZ3RpQmlp?=
 =?utf-8?B?MGlmdGJJY3RpanUySVBJalhTNmV3TWg2Z1VLWDVRT0crdmhFK2VRaDNPN1Rk?=
 =?utf-8?B?YXFFUVIwemVubndpZTYwTjdlays0QTBmSkNNMG5hWGxvTityN1hoNzBwbldS?=
 =?utf-8?B?SVhzekF3bVVWdFlIZkhOcEdzQkxPUDBPeVRUak1aZGFJdHpiWFN6MmVteHpK?=
 =?utf-8?B?c0VqQ1RTNklyWjN6bHNGbUs1dE9vMXRCVnlhbk55VVRXR0Y3L0dJL2tMZ0d0?=
 =?utf-8?B?djdTZTZtWXpGNGgrMDZ2M09EU1hOaWdHNXJrN3ZoVXpMbHpKd3lwdklBVHhH?=
 =?utf-8?B?REY2UUwzR1UzcGl3Wm5FeG5HOCtVRWwxWnlWMTk1SGFLdU5mNkczYy9ycWFH?=
 =?utf-8?B?YnZlU3A4Wk03Mkl5dlhyVGVpTVEzNVpQN1VUNjFRZTFmTHVWdjBrL3VCZXhS?=
 =?utf-8?B?UHBZSTBORnBtdWxzWWlnbGFFMEtxS1dSQzEwL3BPcEdETGpwQ0VFUVlsa2ZO?=
 =?utf-8?B?VDltTlpSYmY3Um9qM2ZpM1dwVk1Jc251cUdaY3hnZ3loczFUWWR0SG1xNVUw?=
 =?utf-8?B?aWdtakYwQmxQVlF6MHpseTl0T2ZmVXVBcHBGRTFDRng2QWZVbGxrbXNxQkVT?=
 =?utf-8?B?TG01bjMrdFFVZ1FFbUJMVFFLNHk1UUpzdVdHY2VRaW1YWHNtOWlTdndWRlh6?=
 =?utf-8?B?ZGN5cVBxU2M1MVluTkxEUnN3M01LZG9YZDNTQldYTFMxdy9BVE5HWjVGVVBt?=
 =?utf-8?B?a3B3ajM4WE54MUpFUnFnVGpWb3p0MVVDM0hCRGZoaFdIRlNST1phNWRWbWNF?=
 =?utf-8?B?M3FMUTZITXg1WDZ0Rk1OSCtoMUQ4cGFaTEZFOEl6SGpXMTRrL2pxU3h2WTB2?=
 =?utf-8?B?cjd4K205OUdDdm9PZGpSN3R2TjZoNGlZdkRGNjA2TFBkWWp0S2hpMWJ3WnQ1?=
 =?utf-8?B?aDMzNUV0R2cxZFY0YnFSNzZhQnM1L3BPa2Z2TWFqTFZ2OE0weWx4amJ0dlFh?=
 =?utf-8?B?ZGVoV3NjWTVqTjZXUUZVNURTUVdXR1dJbFlZWElSVDJETmdvbDg0czIydkxP?=
 =?utf-8?B?aW0vc0tTbkdweEtyN0V0cG54N3pzb1lMR3RDZlFTWUNRTlZYcWhqb3U5OHhr?=
 =?utf-8?B?dUl5TGdlSzRBQlpKQURZSStQK3VOcDdCUmUreFFNbU51ZE8wcVUxa3BsSExP?=
 =?utf-8?B?bEJEK3FFVGFWcGI3d2w5cDRWdjlWQ2dOY1BHeHhlVStaUVJDRGM5ZjR1NW14?=
 =?utf-8?B?Znh2QnZML2JISUFYUGVWb0lwN1FIOERMTUlrcS8yRDZTK3lCNWdyeFhCSk8r?=
 =?utf-8?B?QUpDY2xMeER2cmFrUEdLdWFKQ1pYbDlBSUM2Vkd3TWJZeStqWm9zNmJ1alBE?=
 =?utf-8?B?LzR6RVpMMXZ5OWdrOUdQVExCYmo0UEJ3LzFBalFYWDdBWTZ3Z204emdWdXdN?=
 =?utf-8?B?bzlOeFdVL0V1MXdCNjBoUmloUlBxMVEwR2FWdVI2YWgrN1MwWFRIR0p2Rk5p?=
 =?utf-8?B?bWIvdGh6bFRNWWlUWVZ2L2lqeU5wTWV3aUt5Ykc0bzV1K3liZUxQMVBjSnht?=
 =?utf-8?B?QzQyNmpla0dycG8zb05EZW1YMndoQkkrUjFBdEFXcE8zMFpKOGVLYVdPZWgy?=
 =?utf-8?B?R1lNNHNkUFYxK3ZWZ2FFWWpyNTdJZmdUQ2dMQk5veWZxditFV3BMT0hHeWZY?=
 =?utf-8?B?b1ZZUXVIQkgrMGpqOWx1bytMbTQzeHRVSE1PUHdjYVJyM1lpRXhzaFJDNXV2?=
 =?utf-8?Q?fuiz62vQZitsdY0ZfBN8/Lcs4spGC/3VYJ227/Q?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdf9e4cf-1623-4ef1-cfc5-08d97690def4
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 08:31:23.8959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0GUo+DLS4nHsXJErd+jaUjkC0PrkQ7ZGZVBv1DGnzXNhVy1j5VodnVDpcf+S1IDMZeyQgq2vWqxuOZmfjK7OSw==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IFBEUyBmaWxlIGNvbnRhaW5zIGFudGVubmEgcGFyYW1ldGVycy4gVGhlIGZpbGUgaXMgc3BlY2lm
aWMgdG8gZWFjaApoYXJkd2FyZSBkZXNpZ24uIE5vcm1hbGx5LCB0aGUgYm9hcmQgZGVzaWduZXIg
c2hvdWxkIGFkZCBhIGxpbmUgaW4gdGhlCm9mX2RldmljZV9pZCB0YWJsZSB3aXRoIGhpcyBvd24g
YW50ZW5uYSBwYXJhbWV0ZXJzLgoKVW50aWwsIG5vdyB0aGUgYWJzZW5jZSBvZiBQRFMgZmlsZSBp
cyBhIGhhcmQgZmF0YWwgZXJyb3IuIEhvd2V2ZXIsCmR1cmluZyB0aGUgZGV2ZWxvcG1lbnQsIGlu
IG1vc3Qgb2YgdGhlIGNhc2VzLCBhbiBlbXB0eSBQRFMgZmlsZSBpcwpzdWZmaWNpZW50IHRvIHN0
YXJ0IFdpRmkgY29tbXVuaWNhdGlvbi4KClRoaXMgcGF0Y2gga2VlcCBhbiBlcnJvciwgYnV0IGFs
bG93IHRoZSB1c2VyIHRvIHBsYXkgd2l0aCB0aGUgZGV2aWNlLgoKU2lnbmVkLW9mZi1ieTogSsOp
csO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMv
c3RhZ2luZy93ZngvbWFpbi5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9t
YWluLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYwppbmRleCAwYTlkMDJkMWFmMmYuLmI3
OTBkODU3M2RlNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMKKysrIGIv
ZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMKQEAgLTIyMCw3ICsyMjAsNyBAQCBzdGF0aWMgaW50
IHdmeF9zZW5kX3BkYXRhX3BkcyhzdHJ1Y3Qgd2Z4X2RldiAqd2RldikKIAogCXJldCA9IHJlcXVl
c3RfZmlybXdhcmUoJnBkcywgd2Rldi0+cGRhdGEuZmlsZV9wZHMsIHdkZXYtPmRldik7CiAJaWYg
KHJldCkgewotCQlkZXZfZXJyKHdkZXYtPmRldiwgImNhbid0IGxvYWQgUERTIGZpbGUgJXNcbiIs
CisJCWRldl9lcnIod2Rldi0+ZGV2LCAiY2FuJ3QgbG9hZCBhbnRlbm5hIHBhcmFtZXRlcnMgKFBE
UyBmaWxlICVzKS4gVGhlIGRldmljZSBtYXkgYmUgdW5zdGFibGUuXG4iLAogCQkJd2Rldi0+cGRh
dGEuZmlsZV9wZHMpOwogCQlnb3RvIGVycjE7CiAJfQpAQCAtMzk1LDkgKzM5NSw3IEBAIGludCB3
ZnhfcHJvYmUoc3RydWN0IHdmeF9kZXYgKndkZXYpCiAKIAlkZXZfZGJnKHdkZXYtPmRldiwgInNl
bmRpbmcgY29uZmlndXJhdGlvbiBmaWxlICVzXG4iLAogCQl3ZGV2LT5wZGF0YS5maWxlX3Bkcyk7
Ci0JZXJyID0gd2Z4X3NlbmRfcGRhdGFfcGRzKHdkZXYpOwotCWlmIChlcnIgPCAwKQotCQlnb3Rv
IGVycjA7CisJd2Z4X3NlbmRfcGRhdGFfcGRzKHdkZXYpOwogCiAJd2Rldi0+cG9sbF9pcnEgPSBm
YWxzZTsKIAllcnIgPSB3ZGV2LT5od2J1c19vcHMtPmlycV9zdWJzY3JpYmUod2Rldi0+aHdidXNf
cHJpdik7Ci0tIAoyLjMzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
