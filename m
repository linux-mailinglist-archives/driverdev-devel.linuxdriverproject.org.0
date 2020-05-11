Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1328E1CDF68
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 May 2020 17:50:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C2370260A3;
	Mon, 11 May 2020 15:50:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NqZnWgPYCTGr; Mon, 11 May 2020 15:50:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5459925F6B;
	Mon, 11 May 2020 15:50:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 760411BF3C1
 for <devel@linuxdriverproject.org>; Mon, 11 May 2020 15:49:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7291D86CF8
 for <devel@linuxdriverproject.org>; Mon, 11 May 2020 15:49:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9qLhES-sFKNm for <devel@linuxdriverproject.org>;
 Mon, 11 May 2020 15:49:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2061.outbound.protection.outlook.com [40.107.244.61])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5E08286D2E
 for <devel@driverdev.osuosl.org>; Mon, 11 May 2020 15:49:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b7YGYjXp9t051nHpTkY1XEoIBWhb4M4XIKIyU7Pv/FF6OvSketRqxmGQ74C0Kg7xFkoVXUTyFVVTA1qYJn2QjNayMtAEdgCPFR0TvGMrTJImatPW0Qf1YHdbZaSCPcL5oHqN4PMnzX6eC24h8hioNQfxh9ZP2/AcMw+QkWMkIpQ3WHbykx3RgdqFyWCYwjH8JbrzaW7gEMzUVS5shZ92pxsPm7HysbaDEpP/iw6Vd+5IwR6OCZfsGCv9w39wiKmODAe0Z1+RGKKjJ2S7Yk9kjdOeUbsaHmsZ/8iGfvMcl4srZfp0EsTRrXLvXmgz0kaieuS8ZU6+LilJNAZvDhHu5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/IBOowGZWGLX/ya4+8HPPpCjBwLQmsN5qAwxVw+Vu+o=;
 b=XwDoMGRTE7mrIAuh74dWqGIyC4QR7qTFLntP3cLlKD3QWMeViQBxeLBTq1Rquc73x3bSwojOLniSUXrDUZ7ZLX7FMwqWWcE8bw4YG3c3wpYX2QrLXoxq+OCGp5M+ULORUoJ9DUkBX78mRBNV7eI3JN8J9jwZ2xIripTJdrJDNEVKvLIcZLNgM7P1cp+Kbb6Y0IssBiOkwmK/LS7mxc3gT+F2H7Qy75mvolMxkef/6Siz2yzux37eCrHAIDH7uFVI61Z66guzHXflcgu43xqPzqsGlPIvysQhC2ZyXgymPFNxN7N9z+n8WtzitB8fDvr7ilUI0Nac1hXmrJ3gz2O/VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/IBOowGZWGLX/ya4+8HPPpCjBwLQmsN5qAwxVw+Vu+o=;
 b=DiAmqAUE/tGktOAADn1ZwRNuZrz+Zzt3Df2QvnCLWH9QvKdyaeQnxiYM3PDh/9U4inosfFj+Q8ps5/sTiXJ9G5FarObUSSOQN8vvwjEP8ngPEGUkO6NTzo10EYvr5Dp34C5sUjss1YnfT9vYmetEOS+THXw6k5sY3hL5Zz+AKTU=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1968.namprd11.prod.outlook.com (2603:10b6:300:113::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Mon, 11 May
 2020 15:49:57 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 15:49:57 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 06/17] staging: wfx: fix endianness of fields media_delay and
 tx_queue_delay
Date: Mon, 11 May 2020 17:49:19 +0200
Message-Id: <20200511154930.190212-7-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511154930.190212-1-Jerome.Pouiller@silabs.com>
References: <20200511154930.190212-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SN6PR2101CA0026.namprd21.prod.outlook.com
 (2603:10b6:805:106::36) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (82.67.86.106) by
 SN6PR2101CA0026.namprd21.prod.outlook.com (2603:10b6:805:106::36) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.2 via Frontend
 Transport; Mon, 11 May 2020 15:49:55 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [82.67.86.106]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7ebd07f5-2dc0-4c3b-caa6-08d7f5c2f478
X-MS-TrafficTypeDiagnostic: MWHPR11MB1968:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB19681F0FADB059AB2A30458D93A10@MWHPR11MB1968.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:660;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x2ZKS0ZDZ6fXVyVevW56HJhA0O6RnP8B7z+sTehKH/nsh5Hq+WarjmmK9NfrxwJ3LNo8tcA9rlFl1Uqzjyt4RPx0CDPTNQozIhH6GKuzbAmYxJRM5Vt+34DBHK3i1So3k+Ja82nyJR1gQKmNlXj9DbubQ9V3p1RxdWdLBKCF8VR8GVKn0UYkVTt+fnMFm9f6W5u5+U1sVf/TIWTtU4SkdTB8kumf4mzM4RyHlxyep82XgSVM/QKJBJr5KA9lzCvrmV0KIxB5+hc+fIjPwcmYjcA0or7z1v3mTWhAFWCYUZMcGyg+WEtKcc3gCWNPvEi24aSgQuFZUFUBzyrDqQDdX2HhET3dnKd43JQVrBfL87Bu2zPDqTkAp+H24ctCSABSnGaLMREv+vmP1OYH1Bemt8IavvbszNZ0HKTZp3g1KsJCCyK9O4ESmNRkTAdYADrwTAv8yTdDRoHaBeTykE4wtPgA4WXga1eA8rtYrxxrFXGZmUGjBNPAVF1JXMSpnQ+QzHcgbMAoj6M0XMZBrDlAOw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(346002)(136003)(396003)(376002)(366004)(33430700001)(186003)(52116002)(86362001)(316002)(5660300002)(7696005)(6486002)(33440700001)(478600001)(54906003)(6666004)(4326008)(107886003)(66574014)(36756003)(16526019)(26005)(8936002)(956004)(2616005)(8676002)(1076003)(66476007)(66946007)(66556008)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: IQ1yaaP6+zUMchLAxMCkiJw+IqALaHKztdZUwUZESiQu4NhW5dUcP2hfEb9EM91QZy46MOQxz1M/lUVm89zx4faLWkSg73amwtbp2mpjHC2BZrHtnSpQGZOQ+qQkNWrUsep72qA8fFETmuCy6VBMph3aPA6/30nxzVEm9XzN0scd4RlNk252HYbuO+CDlHxygKcUgpbjNxIO/ou3noaAQj7fReBo+1WdBOm6+SZXl7TbCziFE6zbDxIEMgXwc9G5hy/cRhIumV7zJQoEtZkIZk0vzv9Dc2sn7uGbbw2fQ/h4A/0Pv4caNq9rwghtHrJvX1CsXr+T+g8rqwNUpIjCkeqM97PDMknwwqokrLBKkZynMwH5Q5Gpqz3AcLLj9mOcaa+rU135AgTsRsOdv2sHr5WY7Vouv5UTHMvJmVIK5SzFfGAf6AF5ZHztSV9El5aKkLQ2SSR+DK0T/UJ/qpm6jHI7XySnGPd1olBsKNhs/WM=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ebd07f5-2dc0-4c3b-caa6-08d7f5c2f478
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 15:49:57.3300 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XEXj2CQdjTckyJpV8BpOzRvg0tmevapPmq1lwqcuvVvVudDrWGJErIv87xsvPjoA89oFNE22fVRdDw9IwGH67Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1968
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
IHN0cnVjdCBoaWZfY25mX3R4IGNvbnRhaW5zIG9ubHkgbGl0dGxlIGVuZGlhbiB2YWx1ZXMuIFRo
dXMsIGl0IGlzCm5lY2Vzc2FyeSB0byBmaXggYnl0ZSBvcmRlcmluZyBiZWZvcmUgdG8gdXNlIHRo
ZW0uIEVzcGVjaWFsbHksIHNwYXJzZQpkZXRlY3RlZCB3cm9uZyBhY2Nlc3MgdG8gZmllbGRzIG1l
ZGlhX2RlbGF5IGFuZCB0eF9xdWV1ZV9kZWxheS4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBv
dWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcv
d2Z4L2RhdGFfdHguYyB8IDMgKystCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3RyYWNlcy5oICB8IDQg
KystLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMgYi9kcml2ZXJzL3N0YWdp
bmcvd2Z4L2RhdGFfdHguYwppbmRleCBmNjQxNDlhYjA0ODQuLjAxNGZhMzZjOGY3OCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMKKysrIGIvZHJpdmVycy9zdGFnaW5n
L3dmeC9kYXRhX3R4LmMKQEAgLTU2Miw3ICs1NjIsOCBAQCB2b2lkIHdmeF90eF9jb25maXJtX2Ni
KHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBjb25zdCBzdHJ1Y3QgaGlmX2NuZl90eCAqYXJnKQogCiAJ
aWYgKCFhcmctPnN0YXR1cykgewogCQl0eF9pbmZvLT5zdGF0dXMudHhfdGltZSA9Ci0JCWFyZy0+
bWVkaWFfZGVsYXkgLSBhcmctPnR4X3F1ZXVlX2RlbGF5OworCQkJbGUzMl90b19jcHUoYXJnLT5t
ZWRpYV9kZWxheSkgLQorCQkJbGUzMl90b19jcHUoYXJnLT50eF9xdWV1ZV9kZWxheSk7CiAJCWlm
ICh0eF9pbmZvLT5mbGFncyAmIElFRUU4MDIxMV9UWF9DVExfTk9fQUNLKQogCQkJdHhfaW5mby0+
ZmxhZ3MgfD0gSUVFRTgwMjExX1RYX1NUQVRfTk9BQ0tfVFJBTlNNSVRURUQ7CiAJCWVsc2UKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvdHJhY2VzLmggYi9kcml2ZXJzL3N0YWdpbmcv
d2Z4L3RyYWNlcy5oCmluZGV4IGM3OGM0NmIxYzk5MC4uOTU5YTBkMzFiZjRlIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3RyYWNlcy5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngv
dHJhY2VzLmgKQEAgLTM4Nyw4ICszODcsOCBAQCBUUkFDRV9FVkVOVCh0eF9zdGF0cywKIAkJaW50
IGk7CiAKIAkJX19lbnRyeS0+cGt0X2lkID0gdHhfY25mLT5wYWNrZXRfaWQ7Ci0JCV9fZW50cnkt
PmRlbGF5X21lZGlhID0gdHhfY25mLT5tZWRpYV9kZWxheTsKLQkJX19lbnRyeS0+ZGVsYXlfcXVl
dWUgPSB0eF9jbmYtPnR4X3F1ZXVlX2RlbGF5OworCQlfX2VudHJ5LT5kZWxheV9tZWRpYSA9IGxl
MzJfdG9fY3B1KHR4X2NuZi0+bWVkaWFfZGVsYXkpOworCQlfX2VudHJ5LT5kZWxheV9xdWV1ZSA9
IGxlMzJfdG9fY3B1KHR4X2NuZi0+dHhfcXVldWVfZGVsYXkpOwogCQlfX2VudHJ5LT5kZWxheV9m
dyA9IGRlbGF5OwogCQlfX2VudHJ5LT5hY2tfZmFpbHVyZXMgPSB0eF9jbmYtPmFja19mYWlsdXJl
czsKIAkJaWYgKCF0eF9jbmYtPnN0YXR1cyB8fCBfX2VudHJ5LT5hY2tfZmFpbHVyZXMpCi0tIAoy
LjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
