Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 451AB1CF84A
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 May 2020 17:04:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B9382203EE;
	Tue, 12 May 2020 15:04:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WQ7pV3xdAggV; Tue, 12 May 2020 15:04:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 61DCC24E36;
	Tue, 12 May 2020 15:04:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B32F1BF5DC
 for <devel@linuxdriverproject.org>; Tue, 12 May 2020 15:04:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E156F23771
 for <devel@linuxdriverproject.org>; Tue, 12 May 2020 15:04:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id veUgUnNgfjNI for <devel@linuxdriverproject.org>;
 Tue, 12 May 2020 15:04:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2064.outbound.protection.outlook.com [40.107.237.64])
 by silver.osuosl.org (Postfix) with ESMTPS id 2E4D2203EE
 for <devel@driverdev.osuosl.org>; Tue, 12 May 2020 15:04:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CQ8LR9Wxzylc+ZlVTScLFQR/3GkLyexqMj+JQZ0iBrnxTCsKl8ytN3dTpV4H8xYa1JtdBJK+FsXnNPAIy3VJ8oqa7S/QU4uYBXLl2mfno1/bomaYCXz7m6RaUnYesuW9G9WcEniCLJH4uclgBTstl2ipaa9uQ99j0vBePwe/BIqZXEPlIJDQJmx//i3tX9rrovLfuM0O6nQ+XWh+YdiCG7zRUmuWsXToZmH4tWrbAIIzvyN2Y8SjJQKbWKY6c4po7TQ+sH6T6t9dZi9dtG62EL9zcBelCMbHOTTkBbMDpQ6fXOpJA7ltyD1oxF3qpsGi+OFdchWLZS5MBvHLqtiTrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/IBOowGZWGLX/ya4+8HPPpCjBwLQmsN5qAwxVw+Vu+o=;
 b=BsrqIiAK3fP6Rj2M8OowayKr2IPJCkCcjynA6nrf4EFu+E79LZYLccBupShhG7VARXG0A4WBtJMQSDZY0KckybuH2t7zm871MEQ/iAdy4dynQsVXUBtoiqleJPKf3i0mgUcXT5Mgx1yywGtzKW5S3Z7uU0j+8/apx14oOABHC/c7z0WZVN7vwIeDn33vCE1/gL7pRGk1J8h7PcMHdlNz7AZCmXogam5V8Y/KE5gKimZkznJ4lHNjdPA2oWJked7OAUbVQ4Vw25kRi9+HV0oS7JPWVTUD9+X8RwtJqDKfmHLTP4AM/9v1ZRtjm1Gd9LiFMjV5HtN2v2sxO51L6vj3Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/IBOowGZWGLX/ya4+8HPPpCjBwLQmsN5qAwxVw+Vu+o=;
 b=POBDwHtwW9YOeOkVclDKJORgnxa3dYSVkTrvQVdCWRLD4jQeDX9o9DyXC4hTxbfQJ+tOLmhETg9zzlO0xQu+IFPw490dbWCMIUIsFmd12gfxlTAs1FkX6RGxMdhCjByC6wcia0qDY8zpBt4s/73TdBQOhGNd4+WVHKZAx8SNsh8=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Tue, 12 May
 2020 15:04:42 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 15:04:42 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH v2 06/17] staging: wfx: fix endianness of fields media_delay
 and tx_queue_delay
Date: Tue, 12 May 2020 17:04:03 +0200
Message-Id: <20200512150414.267198-7-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512150414.267198-1-Jerome.Pouiller@silabs.com>
References: <20200512150414.267198-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: DM5PR1101CA0003.namprd11.prod.outlook.com
 (2603:10b6:4:4c::13) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (82.67.86.106) by
 DM5PR1101CA0003.namprd11.prod.outlook.com (2603:10b6:4:4c::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.20 via Frontend Transport; Tue, 12 May 2020 15:04:40 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [82.67.86.106]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 358d58a5-fc04-4a41-2932-08d7f685cc67
X-MS-TrafficTypeDiagnostic: MWHPR11MB1741:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1741D4035D2CD8F2762BFCC993BE0@MWHPR11MB1741.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:660;
X-Forefront-PRVS: 0401647B7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DkvCq8jaRN+MnzxAoGN1mRwaoJNccfdqMFQiOd3LX0A5k+3xdONdeQ+ttt/iKh5Anckf0s9tk/YGmtvrR7UNqf3Df9ajh8Xl9+tiweZrwBBlKqvl5MOFVW37RHNeiSHGxO7pLqMZ/3nnal6dXt1IJ4YBm5X+/JNkswYYmE5O62U8/rm7UAu/unGhZ/KEvYGh770iWZFmrfJFj/WBueV/0iEKoBPos7/6wPFq77QtgKpBlP4+6QnAl1MjLh+LL2SpnVb7tKafSgYCgLvJOsXHBM9DpoJwPYTp3njsyiiO/z4kOe3pBw8b0BCuTjhbbns9zrOfqrugtQxeIt1/FnrWCWCHZpi9r+/NxO/29zaciNexXdjkvT68gf0VLQxpGrjvWJhCIwsSWpAWwnIDlcxMTzAmhOSeovD/wWAiPns7QlzKasQ+2RI/+mbeWjIALKAgoEZcpBcpqPUshAiBFMcTarqicBW0HervySUI5FmnlLk/QOL5fl3JSxVP7cdEDWA54I6pPNiCSs1pKT2yUzlUZg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(366004)(376002)(39860400002)(346002)(136003)(33430700001)(54906003)(107886003)(478600001)(8676002)(5660300002)(316002)(1076003)(956004)(8936002)(2616005)(186003)(2906002)(7696005)(86362001)(4326008)(52116002)(6666004)(6486002)(66476007)(66574014)(26005)(66946007)(66556008)(33440700001)(16526019)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: a/zbgdRfl769uim8e47pd3oPgEyBbeqy5ORUUfBq/ii0wbpEpjn+l10uEQnm5iGVh7NLmVx8p4Xu3qa46B9w4hT7glSn7biGjPzJOWykQNsrUhruykqSD5sMPAKrA9qcgqWfC425glO92jYH70lEkKh+MDzs3KTK3qX2ROGRfJVrls2WyxtvxhfhIKYt7r+J4UDY3w2ada/nnKiruOOCVH64zMjkadKOtW0ugoTfaKeYZ7I6FjKiTpj/kVWUqOLtNVMqu/9rxFh6gzp2gmc/KaMafGY8HhFaYreedRGpJ9vYQ7J4vOnUSoTX85D/WwHPCZzfC1+bSTddQ1rBd5dFGzjGeAzt4AH6RAUU4CgznJfDaGDogwwOk4TZdzksPS0Ks0/BVTm7jf/Qn1qrDHKh5nUlqusPdr+d+cmExIfGILhASj3jlJXDB/WEmQjN0BrRwAFtMYNWWC86WnNGwb4u63RVWtsfw2mHrmBT1nvbnBE=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 358d58a5-fc04-4a41-2932-08d7f685cc67
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2020 15:04:41.8749 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S6/5EhbQQdSjxJWpNNMG2GkeBDtbDJgBkLEhvO8coMHI+OUCnIL6gxXUM7SPrVbb/4XpYvHgHyGg/qH1d8uztw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1741
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
