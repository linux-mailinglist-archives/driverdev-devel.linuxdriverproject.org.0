Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 944FD1D485B
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 10:34:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BAB1B899EA;
	Fri, 15 May 2020 08:34:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IFJgjP-5f9Qo; Fri, 15 May 2020 08:34:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 462E089959;
	Fri, 15 May 2020 08:34:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 35AB01BF285
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 08:34:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 325E187D39
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 08:34:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id US6GXI4RsdfI for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 08:34:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2057.outbound.protection.outlook.com [40.107.223.57])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F1F7A87D3B
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 08:34:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HaAOfY9BPxFQAsTE30zdP81KxH5y8KizUjavcG8cuW8LKCM4T6kSk9ATfPtUGzBJRivAgVIBLBuflV7k+RsS5rl9fRGD0sVnczBxbL6QBhguythskZLiUPteJxlWjv+jWX1tVRLvKbqtpKv5FUvL/9C0cQdkY4dQI3kMmFcH1eDTiMiAEK5Z53VmsXUcuKZsVg/WsIUXfydxOtfnbyTFG01xIWvFrklyFIYxdpwl3hBQY316yEuo0KUUAYJV/MZGKeOgR1KJXyLlaHwWhB7G/zzXIRHhGwlhElTIArnThlHh2Nq3hgIGCj9wbYAtHD+JrUKEFSFms/7eG4LXFmgO+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VTo4cUJpViSIE4IqsjGU0hc18B2rO5LsQoDQfmx4mLU=;
 b=IrRMqUM+wn4mB3DYL90NBQuJ+dOT/5Qg0lBNte295NukKDxqPTuu2C3Z0PznKu6NA3am803dvgcPOsBTIBOlsmpd7XPE5Iup1uIl2bY+6F1YEuLjJ8qtrriaB/wxvDcCot6usKAbRn46MwY2uEFzCJBNeQDwljfxEqQdGX8IKJzDNssyQWSmH0vJj9GNOxpSoUF05gCT+OICTNaujG3v0JP1syBLfPtmU8CKCIVnw9BGPKSK4r6vyhHMYmdIUpHOux925hi06hM7o+EMZK+nSW3Zff5bMzxTwhf3gcQ2i+Ul13PGcMNIGtFZVSZftd532KpsVxPhKKaEXxHR59YJdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VTo4cUJpViSIE4IqsjGU0hc18B2rO5LsQoDQfmx4mLU=;
 b=nGhD6maTSxIY5B8vI8NU7UeVMsvk/cmXPMcgvaDqWiE2RclRpTIykAsEtvuaT1gJjhMV79IPGwGDd04SquVdh9yHYym1uQsP7kNJcm/oTsBfpU++dERmTv81XRo5x7Gcnt/3PaZE9XzteOM6H8lWL3CtVqViVrq3WkMDfTojZtE=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1310.namprd11.prod.outlook.com (2603:10b6:300:28::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Fri, 15 May
 2020 08:34:05 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 08:34:05 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 09/19] staging: wfx: call wfx_tx_update_sta() before to
 destroy tx_priv
Date: Fri, 15 May 2020 10:33:15 +0200
Message-Id: <20200515083325.378539-10-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515083325.378539-1-Jerome.Pouiller@silabs.com>
References: <20200515083325.378539-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0076.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:18::16) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (82.67.86.106) by
 PR0P264CA0076.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:18::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.24 via Frontend Transport; Fri, 15 May 2020 08:34:03 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [82.67.86.106]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ad575a6d-5dc4-444a-4a92-08d7f8aaba8a
X-MS-TrafficTypeDiagnostic: MWHPR11MB1310:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB13104A87591A157CDB42208793BD0@MWHPR11MB1310.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-Forefront-PRVS: 04041A2886
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KIXb0fza1REQJSw49v05XSb5RFd21mqpjv26HTND9gt+HEPqi0PHr+Txgqg9jSKByYdHbst0t3RLVbDO4qNVrnYoOS40tPAQ4jyxdF3CQIsyPwBg1Y5XbQ7nswlG8XcOkB5CjgXtO/VQF9iQQ2m8qzASEJRnVp5LF/xluxaNWVORyBdkt7gypALU67R9uz5VtV8gTBUiBSl4ssiquwXCoNoqGWK07RBof79DhqX/QxcdOU5wTkExieJexZHgFbAXQu8wrqEpxp83vyJFDnZoTaQ++n40kn5+tuWWuLKiMBHzuP6FpO6X/uGgNpIABqxj8B9qEinPttAy1dQMPSYdRc942jQ9jpX5EoNj9UtRWSGwjkRwxHv3O4ft8Y1zWlxqADsZq1AdcCERFz9ctvVXN4bUx77UELAvjxPIIK8+WlP1x+6OjkeLStm8SRSsfNzU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(136003)(376002)(366004)(39850400004)(396003)(8886007)(66556008)(186003)(6512007)(66946007)(6506007)(36756003)(316002)(66476007)(26005)(52116002)(16526019)(6666004)(54906003)(2906002)(2616005)(478600001)(66574014)(107886003)(956004)(8936002)(86362001)(8676002)(6486002)(5660300002)(4326008)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: E39t5VB7e4JilvqR+cuU+uI8gRs6nObxkNlBg1fhimhtWzzOvlma9Ym20tFAHrrvhwm+MhOZcOp5PB/rtrM/+bThBs3nCDY9SVEh5/CmwKjR9ttl0Pmv0cjfoMF2HuyAWyc2ysNQq36ZPBkwvZJkgMnXN3jG0TvfFVLQrUiodeyqVQ7/INbQXysy1fVSZkLj/KOBhpqDbw+di4aNAIjIsc2XHS0gn7Jw0rxs9PkS3HxlOHCvK5cJ4h/MaMqP4mI1nFCTpFuGhfwgo6wzXoLu1jMM8sOmf1MskFRaLgnQoiYR3gKoooaoV7dDaex3gqvQRXlNvqUTLF5+n5ZpO0Ln78jxN+KeEX7obLjVjPIJ1QRZkOVaPrXlBdlgUZJXsV5hX/hVZkRRAZBQ/IP88QurR4ezxGfu97RvanJ7awcYpToJ9fod/B/4U5q7VkwdHQEHl/HU/tCFpocFzUs2ILl7qDjhuVpcWXj8JjIjJlOiXWQ=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad575a6d-5dc4-444a-4a92-08d7f8aaba8a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2020 08:34:05.5098 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PHNnhWREid43/nhX+ciMP8vGWMMrnGweWCGZv1sFBTvFYktq9cOCdMMFHLJPF08nN0DVnzC7urCQxmCH+KSIYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1310
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
IGZ1bmN0aW9uIHdmeF9ub3RpZnlfYnVmZmVyZWRfdHgoKSBuZWVkIHRvIGtub3cgaWYgdGhlIGZy
YW1lIHdhcwphc3NvY2lhdGVkIHRvIGEgc3RhdGlvbi4gVGhpcyBpbmZvcm1hdGlvbiBpcyBhdmFp
bGFibGUgaW4gdGhlIENvbnRyb2wKQnVmZmVyIChDQikgb2YgdGhlIHNrYi4gSG93ZXZlciwgd2hl
biB3Znhfbm90aWZ5X2J1ZmZlcmVkX3R4KCkgaXMKY2FsbGVkLCB0aGUgQ0IgaXMgbm8gbW9yZSBh
dmFpbGFibGUuIFRodXMsIHRoZSBjYWxsZXIgaGFzIHRvIHRha2UgY2FyZQpvZiB0aGlzIGluZm9y
bWF0aW9uLgoKd2Z4X25vdGlmeV9idWZmZXJlZF90eCgpIGlzIGEgc3BlY2lmaWMgY2FzZS4gQWxs
IHRoZSBvdGhlciBmdW5jdGlvbiBhcmUKY2FsbGVkIGJlZm9yZSB0aGUgZGVzdHJ1Y3Rpb24gb2Yg
dGhlIENCLiBTbywgdGhpcyBwYXRjaCBhbGlnbiB0aGUgQVBJIG9mCndmeF9ub3RpZnlfYnVmZmVy
ZWRfdHgoKSB3aXRoIHRoZSBvdGhlciBmdW5jdGlvbnMuIENhbGwgaXQgYmVmb3JlIHRoZSBDQgp3
YXMgZGVzdHJveWVkIGFuZCBkcm9wIHRoZSBleHRyYSBhcmd1bWVudCAnaGFzX3N0YScuCgpJdCBp
cyBhbHNvIHRoZSByaWdodCB0aW1lIHRvIHJlbmFtZSBpdCBpbnRvIHdmeF90eF91cGRhdGVfc3Rh
KCkgKHdoaWNoCmlzIGNsb3NlciB0byB0aGUgYmVoYXZpb3Igb2YgdGhlIGZ1bmN0aW9uKS4KClNp
Z25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNv
bT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYyB8IDM5ICsrKysrKysrKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwg
MTYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4
LmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYwppbmRleCAyYmEzYjVjM2QxYTcuLjMx
NGNjMjc0M2EyYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMKKysr
IGIvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMKQEAgLTQ1NywxMiArNDU3LDE5IEBAIHZv
aWQgd2Z4X3R4KHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3R4X2Nv
bnRyb2wgKmNvbnRyb2wsCiAJaWVlZTgwMjExX3R4X3N0YXR1c19pcnFzYWZlKHdkZXYtPmh3LCBz
a2IpOwogfQogCi1zdGF0aWMgdm9pZCB3Znhfbm90aWZ5X2J1ZmZlcmVkX3R4KHN0cnVjdCB3Znhf
dmlmICp3dmlmLCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQorc3RhdGljIHN0cnVjdCBpZWVlODAyMTFf
aGRyICp3Znhfc2tiX2hkcjgwMjExKHN0cnVjdCBza19idWZmICpza2IpCiB7Ci0Jc3RydWN0IGll
ZWU4MDIxMV9oZHIgKmhkciA9IChzdHJ1Y3QgaWVlZTgwMjExX2hkciAqKXNrYi0+ZGF0YTsKKwlz
dHJ1Y3QgaGlmX21zZyAqaGlmID0gKHN0cnVjdCBoaWZfbXNnICopc2tiLT5kYXRhOworCXN0cnVj
dCBoaWZfcmVxX3R4ICpyZXEgPSAoc3RydWN0IGhpZl9yZXFfdHggKiloaWYtPmJvZHk7CisKKwly
ZXR1cm4gKHN0cnVjdCBpZWVlODAyMTFfaGRyICopKHJlcS0+ZnJhbWUgKyByZXEtPmRhdGFfZmxh
Z3MuZmNfb2Zmc2V0KTsKK30KKworc3RhdGljIHZvaWQgd2Z4X3R4X3VwZGF0ZV9zdGEoc3RydWN0
IHdmeF92aWYgKnd2aWYsIHN0cnVjdCBpZWVlODAyMTFfaGRyICpoZHIpCit7CisJaW50IHRpZCA9
IGllZWU4MDIxMV9nZXRfdGlkKGhkcik7CisJc3RydWN0IHdmeF9zdGFfcHJpdiAqc3RhX3ByaXY7
CiAJc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0YTsKLQlzdHJ1Y3Qgd2Z4X3N0YV9wcml2ICpzdGFf
cHJpdjsKLQlpbnQgdGlkID0gaWVlZTgwMjExX2dldF90aWQoaGRyKTsKIAogCXJjdV9yZWFkX2xv
Y2soKTsgLy8gcHJvdGVjdCBzdGEKIAlzdGEgPSBpZWVlODAyMTFfZmluZF9zdGEod3ZpZi0+dmlm
LCBoZHItPmFkZHIxKTsKQEAgLTQ3OCwyMiArNDg1LDE4IEBAIHN0YXRpYyB2b2lkIHdmeF9ub3Rp
ZnlfYnVmZmVyZWRfdHgoc3RydWN0IHdmeF92aWYgKnd2aWYsIHN0cnVjdCBza19idWZmICpza2Ip
CiAJcmN1X3JlYWRfdW5sb2NrKCk7CiB9CiAKLXN0YXRpYyB2b2lkIHdmeF9za2JfZHRvcihzdHJ1
Y3Qgd2Z4X2RldiAqd2RldiwKLQkJCSBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBib29sIGhhc19zdGEp
CitzdGF0aWMgdm9pZCB3Znhfc2tiX2R0b3Ioc3RydWN0IHdmeF92aWYgKnd2aWYsIHN0cnVjdCBz
a19idWZmICpza2IpCiB7CiAJc3RydWN0IGhpZl9tc2cgKmhpZiA9IChzdHJ1Y3QgaGlmX21zZyAq
KXNrYi0+ZGF0YTsKIAlzdHJ1Y3QgaGlmX3JlcV90eCAqcmVxID0gKHN0cnVjdCBoaWZfcmVxX3R4
ICopaGlmLT5ib2R5OwotCXN0cnVjdCB3ZnhfdmlmICp3dmlmID0gd2Rldl90b193dmlmKHdkZXYs
IGhpZi0+aW50ZXJmYWNlKTsKIAl1bnNpZ25lZCBpbnQgb2Zmc2V0ID0gc2l6ZW9mKHN0cnVjdCBo
aWZfbXNnKSArCiAJCQkgICAgICBzaXplb2Yoc3RydWN0IGhpZl9yZXFfdHgpICsKIAkJCSAgICAg
IHJlcS0+ZGF0YV9mbGFncy5mY19vZmZzZXQ7CiAKIAlXQVJOX09OKCF3dmlmKTsKIAlza2JfcHVs
bChza2IsIG9mZnNldCk7Ci0JaWYgKGhhc19zdGEpCi0JCXdmeF9ub3RpZnlfYnVmZmVyZWRfdHgo
d3ZpZiwgc2tiKTsKIAl3ZnhfdHhfcG9saWN5X3B1dCh3dmlmLCByZXEtPnR4X2ZsYWdzLnJldHJ5
X3BvbGljeV9pbmRleCk7Ci0JaWVlZTgwMjExX3R4X3N0YXR1c19pcnFzYWZlKHdkZXYtPmh3LCBz
a2IpOworCWllZWU4MDIxMV90eF9zdGF0dXNfaXJxc2FmZSh3dmlmLT53ZGV2LT5odywgc2tiKTsK
IH0KIAogc3RhdGljIHZvaWQgd2Z4X3R4X2ZpbGxfcmF0ZXMoc3RydWN0IHdmeF9kZXYgKndkZXYs
CkBAIC01MzksNyArNTQyLDYgQEAgdm9pZCB3ZnhfdHhfY29uZmlybV9jYihzdHJ1Y3Qgd2Z4X3Zp
ZiAqd3ZpZiwgY29uc3Qgc3RydWN0IGhpZl9jbmZfdHggKmFyZykKIAlzdHJ1Y3QgaWVlZTgwMjEx
X3R4X2luZm8gKnR4X2luZm87CiAJY29uc3Qgc3RydWN0IHdmeF90eF9wcml2ICp0eF9wcml2Owog
CXN0cnVjdCBza19idWZmICpza2I7Ci0JYm9vbCBoYXNfc3RhOwogCiAJc2tiID0gd2Z4X3BlbmRp
bmdfZ2V0KHd2aWYtPndkZXYsIGFyZy0+cGFja2V0X2lkKTsKIAlpZiAoIXNrYikgewpAQCAtNTQ5
LDEyICs1NTEsMTMgQEAgdm9pZCB3ZnhfdHhfY29uZmlybV9jYihzdHJ1Y3Qgd2Z4X3ZpZiAqd3Zp
ZiwgY29uc3Qgc3RydWN0IGhpZl9jbmZfdHggKmFyZykKIAl9CiAJdHhfaW5mbyA9IElFRUU4MDIx
MV9TS0JfQ0Ioc2tiKTsKIAl0eF9wcml2ID0gd2Z4X3NrYl90eF9wcml2KHNrYik7Ci0JaGFzX3N0
YSA9IHR4X3ByaXYtPmhhc19zdGE7CiAJX3RyYWNlX3R4X3N0YXRzKGFyZywgc2tiLAogCQkJd2Z4
X3BlbmRpbmdfZ2V0X3BrdF91c19kZWxheSh3dmlmLT53ZGV2LCBza2IpKTsKIAogCS8vIFlvdSBj
YW4gdG91Y2ggdG8gdHhfcHJpdiwgYnV0IGRvbid0IHRvdWNoIHRvIHR4X2luZm8tPnN0YXR1cy4K
IAl3ZnhfdHhfZmlsbF9yYXRlcyh3dmlmLT53ZGV2LCB0eF9pbmZvLCBhcmcpOworCWlmICh0eF9w
cml2LT5oYXNfc3RhKQorCQl3ZnhfdHhfdXBkYXRlX3N0YSh3dmlmLCB3Znhfc2tiX2hkcjgwMjEx
KHNrYikpOwogCXNrYl90cmltKHNrYiwgc2tiLT5sZW4gLSB3ZnhfdHhfZ2V0X2ljdl9sZW4odHhf
cHJpdi0+aHdfa2V5KSk7CiAKIAkvLyBGcm9tIG5vdywgeW91IGNhbiB0b3VjaCB0byB0eF9pbmZv
LT5zdGF0dXMsIGJ1dCBkbyBub3QgdG91Y2ggdG8KQEAgLTU4MCwxNiArNTgzLDE3IEBAIHZvaWQg
d2Z4X3R4X2NvbmZpcm1fY2Ioc3RydWN0IHdmeF92aWYgKnd2aWYsIGNvbnN0IHN0cnVjdCBoaWZf
Y25mX3R4ICphcmcpCiAJCX0KIAkJdHhfaW5mby0+ZmxhZ3MgfD0gSUVFRTgwMjExX1RYX1NUQVRf
VFhfRklMVEVSRUQ7CiAJfQotCXdmeF9za2JfZHRvcih3dmlmLT53ZGV2LCBza2IsIGhhc19zdGEp
OworCXdmeF9za2JfZHRvcih3dmlmLCBza2IpOwogfQogCiB2b2lkIHdmeF9mbHVzaChzdHJ1Y3Qg
aWVlZTgwMjExX2h3ICpodywgc3RydWN0IGllZWU4MDIxMV92aWYgKnZpZiwKIAkgICAgICAgdTMy
IHF1ZXVlcywgYm9vbCBkcm9wKQogewotCWNvbnN0IHN0cnVjdCB3ZnhfdHhfcHJpdiAqdHhfcHJp
djsKIAlzdHJ1Y3Qgd2Z4X2RldiAqd2RldiA9IGh3LT5wcml2OwogCXN0cnVjdCBza19idWZmX2hl
YWQgZHJvcHBlZDsKIAlzdHJ1Y3Qgd2Z4X3F1ZXVlICpxdWV1ZTsKKwlzdHJ1Y3Qgd2Z4X3ZpZiAq
d3ZpZjsKKwlzdHJ1Y3QgaGlmX21zZyAqaGlmOwogCXN0cnVjdCBza19idWZmICpza2I7CiAJaW50
IHZpZl9pZCA9IC0xOwogCWludCBpOwpAQCAtNjE1LDkgKzYxOSwxMiBAQCB2b2lkIHdmeF9mbHVz
aChzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywgc3RydWN0IGllZWU4MDIxMV92aWYgKnZpZiwKIAlp
ZiAod2Rldi0+Y2hpcF9mcm96ZW4pCiAJCXdmeF9wZW5kaW5nX2Ryb3Aod2RldiwgJmRyb3BwZWQp
OwogCXdoaWxlICgoc2tiID0gc2tiX2RlcXVldWUoJmRyb3BwZWQpKSAhPSBOVUxMKSB7Ci0JCXR4
X3ByaXYgPSB3Znhfc2tiX3R4X3ByaXYoc2tiKTsKKwkJaGlmID0gKHN0cnVjdCBoaWZfbXNnICop
c2tiLT5kYXRhOworCQl3dmlmID0gd2Rldl90b193dmlmKHdkZXYsIGhpZi0+aW50ZXJmYWNlKTsK
KwkJaWYgKHdmeF9za2JfdHhfcHJpdihza2IpLT5oYXNfc3RhKQorCQkJd2Z4X3R4X3VwZGF0ZV9z
dGEod3ZpZiwgd2Z4X3NrYl9oZHI4MDIxMShza2IpKTsKIAkJaWVlZTgwMjExX3R4X2luZm9fY2xl
YXJfc3RhdHVzKElFRUU4MDIxMV9TS0JfQ0Ioc2tiKSk7Ci0JCXdmeF9za2JfZHRvcih3ZGV2LCBz
a2IsIHR4X3ByaXYtPmhhc19zdGEpOworCQl3Znhfc2tiX2R0b3Iod3ZpZiwgc2tiKTsKIAl9CiB9
CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
