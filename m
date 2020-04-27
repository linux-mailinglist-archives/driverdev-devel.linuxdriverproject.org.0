Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC8E1BA4E5
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 15:41:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51B5F85F34;
	Mon, 27 Apr 2020 13:41:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GKE9Fx0lgapZ; Mon, 27 Apr 2020 13:41:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA77785C95;
	Mon, 27 Apr 2020 13:41:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14B9D1BF38C
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 13:41:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 10F608665D
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 13:41:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2TsIVwZcZS3w for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 13:40:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2045.outbound.protection.outlook.com [40.107.244.45])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4AEEA8663C
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 13:40:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H0FdVpvTLIEF2LHXTihCnLnNKe+eethvUByky+EZ9S5TjFzB7d9SHrgMdqh/pJaKno7PUMg0puC2wFnJ0PW3ZGgpAF81FRBXHmCCnjZNAlDSjhc131zz2QF7wirpasPwalR8/3RsfOwzS6k61LPEWyuKYYTgtAbmzsrhR8o4lf4LstO+2WfdssSwLdRnIAK0kU6P8VFa9fsRQIBf3TNzqEnrtZIzCwrDE089scP3hGKsk7MLeQxANcB9ftAccXFmWB+7a8lRpckqAguLOT+e8bSHnvs8Eb2ypkp0FtaoR2o1/ItmSyzE83dFNEgYj3MZAJ9hDCor4dLwE/4+h8LWLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5jomDLASj8OFo3W7VpdAFAZG01W9DMmD+hzN6H1SUW4=;
 b=d5pv5vqQbADIctKbT5gUgGQqs2mxAxxAM59lVLCFsd9T/k3wIv1Q5dtEwhUx7Q7KYeJBwOwzWWNEHztTRqEff3l3R8Y9JO7pe8CVHFNf3vqHucjcSv2P5lki5+TQ4wDr38scT1vd5zIUWs6R5QI7pVLZVvMuz1DNr9VSAB+riVZD/zPUb5q/Y4MyLx0CUB0c2pHokb9olLp6vA/HTim7D4+mD09BPaPR2abnTlYuVI/vRR2DuB1jONQ1GzsLv/NOlKSDbAEky8yrGGFttc/WevpPns2TASjPxxLbJuMn+eUA4o5qI96q2BzsMk5wzDlNe5sfiyLnc/UTVGRHClry8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5jomDLASj8OFo3W7VpdAFAZG01W9DMmD+hzN6H1SUW4=;
 b=jkTjoFe6KezYX/6v87axnnGUOapgjmBXaYBx1Uy33AyxpmfmZIFxdaIjkH09FTrsy0r+s8OnCJtVPI+pSd372ZNdfbncErAldcdl/hs2+dokVLw9nL20Rn0wpcf808z6R0QoJ1egjsfLu3HOgI9ph84KrwJh/BDQGYF7mlCRYjs=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1424.namprd11.prod.outlook.com (2603:10b6:300:26::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Mon, 27 Apr
 2020 13:40:57 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2937.023; Mon, 27 Apr
 2020 13:40:56 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 00/17] staging: wfx: misc fixes
Date: Mon, 27 Apr 2020 15:40:14 +0200
Message-Id: <20200427134031.323403-1-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.1
X-ClientProxiedBy: PR0P264CA0232.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1e::28) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 PR0P264CA0232.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1e::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Mon, 27 Apr 2020 13:40:53 +0000
X-Mailer: git-send-email 2.26.1
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 56e85698-4ba1-4533-ae88-08d7eab09ce0
X-MS-TrafficTypeDiagnostic: MWHPR11MB1424:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1424FE57FE0B5DBBC7B444D793AF0@MWHPR11MB1424.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0386B406AA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(39850400004)(376002)(346002)(396003)(366004)(8886007)(66476007)(66556008)(4326008)(81156014)(86362001)(8936002)(6486002)(52116002)(6666004)(6506007)(5660300002)(16526019)(6512007)(1076003)(478600001)(8676002)(36756003)(186003)(2616005)(54906003)(107886003)(66574012)(2906002)(316002)(66946007);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iGu2oAFrK1SRQ5oJfserogiHhOfg+jYCs4ffOHu0jwHGOAq3Ylnwyi9/3x9KLC9a07/rYKuHcScbDe4Wx9QYjb74646osf8AFJWwqNQPGGT3//PWEQrNUZMmOkGx5z7IIMUfGEdRZSpqAQAgcUer31pn81EVkJxuiVCCA3N5OzmJgnU9sEfU+DojdVR7H7JagIA9HLfSOT3HkNRZZ6spMFTMHd/aUMis+WDGLgs21SFssFiDWEtiOprxl4jUyzOD6IYvmrm6nVDyd03OeglVX4+V4xgwg8yF9mMFONvK9xkD2KQmW01jztSfrJpk0ksgnIkhKnqDViwFNnDYzs9wTeccU0vk7FktaFYECnlypZKgR/TCAK4InE2fSxcHzuxUumxzTYTWCM8YmGtt24J1KUqNWSUOSo+RyL7I8VjiVRDEZyJ0YLLzUPMeB+Pht65R
X-MS-Exchange-AntiSpam-MessageData: aukgPg2f3SdKh/sXxE3eEgwjX/L2KRPfmTfw6l2Atfp5hV7RgpUsf4kv0E9HWi3J1u2I/1ZVOgNAebRnW8C5BDo8UYACju/iy9pmIbdajnVA/TiAUR99BlPInNUfSA0KdfsbdN9O8k+Y1jZvTznI+eUPOUEWzed+VyxfDes/16sLwswEBxU6B7Pc8xoacHSa7bEMhQXi8MPd+6X8y/gBFh2bEQpV+SYkjiHSbrCPu/CylaECXyX9anKBRQmA+YJW1hduTYvW+o1YpkLZY+kmW2wcIewVALGNDQx1QMWQb634XBGkDAFsLIsvKjwnmJxnFtxMdkqh8WvBbTnXhua3BTIkVq9WRZLsHCZpv+54/yFclXXdkafJrxBmehjV958xTvbyZE0FD+an4Fq1JRAF9Z9eVaDOHSplq0in2G9xWAO94UapQ39GZ6UIg5+31WDijs9r2QqNCyNuk9RN/MiyyYOJfAgYhNXODdNhEWzlFclPMJVWj0dFkhJhqnioZwxwg3126AXZxBjXwbKhTTacawkeaAUfwE3zW7RIqct7LnHpIiPiuWx3vpBmZbGmk+Lv0NOrPbT+ENFxbddEFaYJY/rNU8A7WFdsjvkhbPhgeLuzzNf49up/5PKXG348ugShyLGsY/lOUr+Sa0x/meSoyPhRKQgpO5rOd9iZ2Z1nfIZOA6TJwNlkC9oF7FhQg5s+8fe42TPXgIEkxP9Epu17tdRlVoPD50InkTkhge43z3xwJ+xVdrZNvU5JSQ6nykS8tKExAwfCfGYkzp12B1LJDwwHFjsHhUxg6ESgRYiSpcT8mfMHHyGKHUD4GOOj7bA+OV39us+oKa4gw72r7IzHPM88rno8/EDYHyfAjeMjaQQ=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56e85698-4ba1-4533-ae88-08d7eab09ce0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2020 13:40:56.6077 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eF/lpqfxNlxCieVWsnenBW4GcOiMworRo4JWNMhouZ9jpTILNXje3IxBWuLaznWu322VNSV95KB3FQG+/3b7Yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1424
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKTm90
aGluZyB2ZXJ5IGV4Y2l0aW5nIGluIHRoaXMgc2VyaWVzLiBJdCBzdXBwb3J0cyB0aGUgY2FzZSB3
aGVyZSBkZXZpY2UKcmVwb3J0cyB0byBiZSB0b28gaG90LCBmaXhlcyBhIGZldyBjb3JuZXIgY2Fz
ZXMgYW5kIG1ha2VzIHNvbWUgY29zbWV0aWMKY2hhbmdlcy4KCkrDqXLDtG1lIFBvdWlsbGVyICgx
Nyk6CiAgc3RhZ2luZzogd2Z4OiBmaXggKGZ1dHVyZSkgVERMUyBzdXBwb3J0CiAgc3RhZ2luZzog
d2Z4OiBjaGFuZ2UgdGhlIGZpZWxkIGNoaXBfZnJvemVuIGludG8gYSBib29sZWFuCiAgc3RhZ2lu
Zzogd2Z4OiBtYXJrIGNoaXAgZnJvemVuIG9uIGVycm9yIGluZGljYXRpb24KICBzdGFnaW5nOiB3
Zng6IGZpeCBzdXBwb3J0IGZvciBBUCB0aGF0IGRvIG5vdCBzdXBwb3J0IFBTLVBvbGwKICBzdGFn
aW5nOiB3Zng6IGZpeCBDQUIgc2VudCBhdCB0aGUgd3JvbmcgdGltZQogIHN0YWdpbmc6IHdmeDog
YWRkIHN1cHBvcnQgZm9yICdkZXZpY2UgdG9vIGhvdCcgaW5kaWNhdGlvbgogIHN0YWdpbmc6IHdm
eDogYWRkIGFuIGV4cGxpY2l0IHdhcm5pbmcgd2hlbiBjaGlwIGRldGVjdCB0b28gaGlnaAogICAg
dGVtcGVyYXR1cmUKICBzdGFnaW5nOiB3Zng6IGZpeCBoaWdoZXN0IFJ4IHZhbHVlIGRlY2xhcmVk
IGluCiAgICBpZWVlODAyMTFfc3VwcG9ydGVkX2JhbmQKICBzdGFnaW5nOiB3Zng6IGZpeCBvdmVy
ZmxvdyBpbiBmcmFtZSBjb3VudGVycwogIHN0YWdpbmc6IHdmeDogZml4IHRoZSB3YXJuaW5nICJp
bmNvbnNpc3RlbnQgbm90aWZpY2F0aW9uIgogIHN0YWdpbmc6IHdmeDogZml4IGRvdWJsZSBpbml0
IG9mIHR4X3BvbGljeV91cGxvYWRfd29yawogIHN0YWdpbmc6IHdmeDogc2hvdyBjb3VudGVycyBv
ZiBhbGwgaW50ZXJmYWNlcwogIHN0YWdpbmc6IHdmeDogYWxzbyBzaG93IHVubmFtZWQgY291bnRl
cnMgZmllbGRzCiAgc3RhZ2luZzogd2Z4OiB1cGRhdGUgbGlzdCBvZiBrbm93biBtZXNzYWdlcyBp
biB0cmFjZXBvaW50cwogIHN0YWdpbmc6IHdmeDogZml4IG1lc3NhZ2VzIG5hbWVzIGluIHRyYWNl
cG9pbnRzCiAgc3RhZ2luZzogd2Z4OiBmaXggZGlzcGxheSBvZiBleGNlcHRpb24gaW5kaWNhdGlv
bgogIHN0YWdpbmc6IHdmeDogdXBkYXRlIGxpc3Qgb2YgZXJyb3JzCgogZHJpdmVycy9zdGFnaW5n
L3dmeC9kYXRhX3R4LmMgICAgICAgICB8ICAxOCArKy0KIGRyaXZlcnMvc3RhZ2luZy93ZngvZGF0
YV90eC5oICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9zdGFnaW5nL3dmeC9kZWJ1Zy5jICAgICAg
ICAgICB8ICAzMSArKysrLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9nZW5lcmFsLmgg
fCAgMzkgKysrKy0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcnguYyAgICAgICAgICB8IDE1
MSArKysrKysrKysrKysrKysrKy0tLS0tLS0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHgu
YyAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHhfbWliLmMgICAg
ICB8ICAgNiArLQogZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHhfbWliLmggICAgICB8ICAgMiAr
LQogZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMgICAgICAgICAgICB8ICAgNCArLQogZHJpdmVy
cy9zdGFnaW5nL3dmeC9xdWV1ZS5jICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9zdGFnaW5n
L3dmeC9zdGEuYyAgICAgICAgICAgICB8ICA1MSArKysrKysrLS0KIGRyaXZlcnMvc3RhZ2luZy93
Zngvc3RhLmggICAgICAgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMvc3RhZ2luZy93ZngvdHJhY2Vz
LmggICAgICAgICAgfCAgMTUgKystCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oICAgICAgICAg
ICAgIHwgICA1ICstCiAxNCBmaWxlcyBjaGFuZ2VkLCAyMjggaW5zZXJ0aW9ucygrKSwgMTAzIGRl
bGV0aW9ucygtKQoKLS0gCjIuMjYuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
