Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A2E25F85D
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 12:32:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F2610865C7;
	Mon,  7 Sep 2020 10:32:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kP+lVs-PTZMc; Mon,  7 Sep 2020 10:32:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A6058676F;
	Mon,  7 Sep 2020 10:32:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 154C11BF2FD
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 10:32:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0DD4087037
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 10:32:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id etajzw46SvFX for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 10:32:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2081.outbound.protection.outlook.com [40.107.93.81])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9617E87032
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 10:32:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g3RIxvevnzUdsYEOn7WJ1zeHSY6gUT5O5jYhO+2w+a0jTGyYc0enhiDcfhtz7ApPJNINehTCqpZxNIDvHSPX9Kitb0ei9ANI+78Yle+d7ayQCQnOosRZV9mZIEit9/sCFyp7XUAQ+aseptufxj0zl1fEjt/OlN8bAgfNAwYmluePKT8yICgI2O+GK68mkOp0LOdlKiUa9wtZd2SHtBSkc0VQK5lmdYI0iOx0RdVx0XpurcknfeCpJXm82B5OH778KH9W/bC1IrLsJdhftyNoxyNPsrlWvPX6qAfuNP+tTC4+tOhyoP/22ZpVGEf3F3bFo7fgWtlMMKQRWuPnGN7Dng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IYlUoioZ4+ScWtK2lDN3keIebpm36JjJsAk+Lqd4trs=;
 b=AHAnlJZDnYRwmI3j9jqN17hJhaADe+Yzw2HKZeu2qUHMHsYmXon72sfhuGR7TZo6LC0ZRWUCvMnp8Yv4t7i1f2eKDZAaRDWaGJUDLbTdNJKBangO5CeyqpWtByuCM3HXTQ7LcMEA5lDtbhuLRn0D3i9doA3Y+iHqMhz0OKU2xkikpbSmJwDXe/KkCxNeVtuIdL46FcLRo8iTjcCJLtjTENISJ7LH+c3+6UH9ezVPENgi1vuUznn0mtRnkOE/7YGsHEQjrA7jpED0bpL++eQLDXkSt4VPcusYVTeVBWdxcDShN0EYngLNmY561dJG6fxR/CvHQYXZH1+FvclTmGzgXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IYlUoioZ4+ScWtK2lDN3keIebpm36JjJsAk+Lqd4trs=;
 b=JojAWDifF1lLX4TKYSKdTLdT3ZsUPQwwA5BjcIO+AuU7gVuvfGXEY4PgwgIEpTPyoOvlsKu3oXqyftxWt4045wbSzC6VNXD097LCZbvkyd2gbYpBPAWkW1D1OIwspjbTTocAnJmZW6z6Q044UmHQ878iPeKf4N5LegMswruU7bQ=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2606.namprd11.prod.outlook.com (2603:10b6:805:55::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.17; Mon, 7 Sep
 2020 10:17:04 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 10:17:04 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 30/31] staging: wfx: drop async field from struct hif_cmd
Date: Mon,  7 Sep 2020 12:15:20 +0200
Message-Id: <20200907101521.66082-31-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200907101521.66082-1-Jerome.Pouiller@silabs.com>
References: <20200907101521.66082-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0109.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:19::25) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (37.71.187.125) by
 PR0P264CA0109.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:19::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 10:16:32 +0000
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e713b419-0904-4b76-5400-08d8531718ef
X-MS-TrafficTypeDiagnostic: SN6PR11MB2606:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB260671C25E557ED18E3B1A9A93280@SN6PR11MB2606.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:332;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XmpNEPs/EzOu8pooXpbYYQmMb9mnJcDQJQK70f/TJtvaHbwu7gygs2s9LnrGBLI28hA5FvuHgQyZLn1NiCyXu1Af1PRq5objR1Qf4GwzuTn4PrlENWnjAe3JXyO0QV+jtDyTkHBJ/tl72oyzFFl2EyDzyMNSXzbRV/4DTF+JUNHW+uBMGdNL6TQc6ezCwlUUiIZDwQRbqxiC6tNOUguM9OK0C5D+OFxh4oNjVZOkyqTrNn387qwgvpImiffEj1eICpYqDRhRHcunhkF/UbX24vrDquGndr7ZFEjVQYP+e+OsQwlUI/meHgyKuLE9hYIeO4heIkbP/n3HpFPHKKYcGy4b0Qs62sNdapiUbgQw1VvyWIKTXPzj5SiWBkz4DHEv02noj6dr61KlZ0mZ7P2y2w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(346002)(366004)(136003)(39850400004)(66946007)(4326008)(5660300002)(2616005)(66476007)(316002)(956004)(478600001)(6666004)(54906003)(52116002)(2906002)(66556008)(1076003)(36756003)(8676002)(86362001)(6486002)(8936002)(7696005)(66574015)(83380400001)(966005)(26005)(16526019)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: w3RJ8PHutsXAQ1+JveY9eBhrOHnjQjMOd+hQOpNPmSwx83Zx9Cg5MyTkvUBkfEediHcv8p+ZSccLTCoCDI+n8wnqWm0h5NIMPt6WvZ3pPgr0lftPelhWrX2vdebKEz4sq3105J21na63GjrEhPLvt/7DOAgkkeDmqezz5H3IRlBD69WLUyRvC4RLY8cU0OUqp2vuk26XJAqxZluqzgWaFuNXXADoiLYSl3lqdiAkgl+ZgAqpEwz434/b0Vd9RvTPEuQyiDYqvXMVbyMy5heh7qDmWvWnSchb0t/Qb8SKqpIFuY6jwtrJtYZkQhW61xYsgWFtDxQGXMf0QLSM34I5pEJKaYPPYa1MALbTf/2tg/WAkYR3h90DWlfoEQBbEqYtD8pAQyA7uuXwD1eJky1g7+7D4y0Zxnt/k6VLu/6Cd4Oux0hAVDm7u1HS7N6pRO083I+dGgJ5GTZhO8mjP4AjniaXhowZKdaAnKjMhA5Sbf1IznDhBqIvVvh2zi83UQHgdd1ypMRllGGEWvNVjmh+fpj6ZY6gqApwy2kCtKfr89atKeyVmwpFacbDs9a/mv3biKf6tLErjb4RPFmoiRnKUH55u+V4uV2HaAEz0NchJ/12uO81X6ll5GFjqVJv59x+HboHF2w4oEC0pvPGJJpfKA==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e713b419-0904-4b76-5400-08d8531718ef
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 10:16:34.2655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SUgQWPQIWJV21noICpJy2aKUa7sJ7TyvpDxr9DHGsrHvIN+d2KhzwVO4Ns/JFbLs7bLsvNpW+QVeiRjp/hL4DA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2606
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
 Julia Lawall <julia.lawall@lip6.fr>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IHBhcmFtZXRlciAiYXN5bmMiIGluIHdmeF9jbWRfc2VuZCgpIGFsbG93cyB0byBzZW5kIGNvbW1h
bmQgd2l0aG91dAp3YWl0aW5nIGZvciB0aGUgcmVwbHkuIEluIHRoaXMgY2FzZSwgdGhlIG11dGV4
IGhpZl9jbWQubG9jayBpcyByZWxlYXNlZAphc3luY2hyb25vdXNseSBpbiB0aGUgY29udGV4dCBv
ZiB0aGUgcmVjZWl2ZXIgd29ya3F1ZXVlLgoKSG93ZXZlciwgImtidWlsZCB0ZXN0IHJvYm90IiBj
b21wbGFpbnMgYWJvdXQgdGhpcyBhcmNoaXRlY3R1cmVbMV0gc2luY2UKaXQgaXMgbm90IGFibGUg
dG8gZm9sbG93IHRoZSBsb2NrIGR1cmF0aW9uIG9mIGhpZl9jbWQubG9jayAoYW5kIGluZGVlZCwK
dGhlIHN0YXRlIG9mIHRoZSBkcml2ZXIgaWYgdGhlIGhhcmR3YXJlIHdvdWxkbid0IHJlcGx5IGlz
IG5vdCB3ZWxsCmRlZmluZWQpLgoKQmVzaWRlcywgdGhpcyBmZWF0dXJlIGlzIG5vdCByZWFsbHkg
bmVjZXNzYXJ5LiBJdCBpcyBvbmx5IHVzZWQgYnkKaGlmX3NodXRkb3duKCkuIFRoaXMgZnVuY3Rp
b24gaGlqYWNrIHRoZSAnYXN5bmMnIGZsYWcgdG8gcnVuIGEgY29tbWFuZAp0aGF0IHdvbid0IGFu
c3dlci4KClNvLCB0aGlzIHBhdGNoIHJlbW92ZXMgdGhlICdhc3luYycgZmxhZyBhbmQgaW50cm9k
dWNlcyBhICdub19yZXBseScgZmxhZy4KVGh1cywgdGhlIG11dGV4IGhpZl9jbWQubG9jayBpcyBv
bmx5IGFjcXVpcmVkL3JlbGVhc2VkIGZyb20KaGlmX2NtZF9zZW5kKCkuIFRoZXJlZm9yZToKICAt
IGhpZl9zaHV0ZG93bigpIGRvZXMgbm90IGhhdmUgdG8gdG91Y2ggdGhlIHByaXZhdGUgZGF0YSBv
ZiB0aGUgc3RydWN0CiAgICBoaWZfY21kCiAgLSBLYnVpbGQgdGVzdCByb2JvdCBzaG91bGQgYmUg
aGFwcHkKICAtIHRoZSByZXN1bHRpbmcgY29kZSBpcyBzaW1wbGVyCgpbMV0gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvZHJpdmVyZGV2LWRldmVsL2FscGluZS5ERUIuMi4yMS4xOTEwMDQxMzE3Mzgx
LjI5OTJAaGFkcmllbi8KClJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVs
LmNvbT4KUmVwb3J0ZWQtYnk6IEp1bGlhIExhd2FsbCA8anVsaWEubGF3YWxsQGxpcDYuZnI+ClNp
Z25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNv
bT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9yeC5jIHwgIDcgKy0tLS0tLQogZHJpdmVy
cy9zdGFnaW5nL3dmeC9oaWZfdHguYyB8IDI0ICsrKysrKysrKy0tLS0tLS0tLS0tLS0tLQogZHJp
dmVycy9zdGFnaW5nL3dmeC9oaWZfdHguaCB8ICAxIC0KIDMgZmlsZXMgY2hhbmdlZCwgMTAgaW5z
ZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L3dmeC9oaWZfcnguYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmMKaW5kZXggNjk1MGIz
ZTlkN2NmLi5iNDBhZjg2MzU2ZjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlm
X3J4LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcnguYwpAQCAtNDcsMTIgKzQ3LDcg
QEAgc3RhdGljIGludCBoaWZfZ2VuZXJpY19jb25maXJtKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LAog
CX0KIAl3ZGV2LT5oaWZfY21kLnJldCA9IHN0YXR1czsKIAotCWlmICghd2Rldi0+aGlmX2NtZC5h
c3luYykgewotCQljb21wbGV0ZSgmd2Rldi0+aGlmX2NtZC5kb25lKTsKLQl9IGVsc2UgewotCQl3
ZGV2LT5oaWZfY21kLmJ1Zl9zZW5kID0gTlVMTDsKLQkJbXV0ZXhfdW5sb2NrKCZ3ZGV2LT5oaWZf
Y21kLmxvY2spOwotCX0KKwljb21wbGV0ZSgmd2Rldi0+aGlmX2NtZC5kb25lKTsKIAlyZXR1cm4g
c3RhdHVzOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5jIGIv
ZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHguYwppbmRleCBhNzVjNmI5ODA0YmEuLjFiZDdmNzcz
MjA5YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHguYworKysgYi9kcml2
ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5jCkBAIC00Nyw3ICs0Nyw3IEBAIHN0YXRpYyB2b2lkICp3
ZnhfYWxsb2NfaGlmKHNpemVfdCBib2R5X2xlbiwgc3RydWN0IGhpZl9tc2cgKipoaWYpCiB9CiAK
IGludCB3ZnhfY21kX3NlbmQoc3RydWN0IHdmeF9kZXYgKndkZXYsIHN0cnVjdCBoaWZfbXNnICpy
ZXF1ZXN0LAotCQkgdm9pZCAqcmVwbHksIHNpemVfdCByZXBseV9sZW4sIGJvb2wgYXN5bmMpCisJ
CSB2b2lkICpyZXBseSwgc2l6ZV90IHJlcGx5X2xlbiwgYm9vbCBub19yZXBseSkKIHsKIAljb25z
dCBjaGFyICptaWJfbmFtZSA9ICIiOwogCWNvbnN0IGNoYXIgKm1pYl9zZXAgPSAiIjsKQEAgLTU1
LDggKzU1LDYgQEAgaW50IHdmeF9jbWRfc2VuZChzdHJ1Y3Qgd2Z4X2RldiAqd2Rldiwgc3RydWN0
IGhpZl9tc2cgKnJlcXVlc3QsCiAJaW50IHZpZiA9IHJlcXVlc3QtPmludGVyZmFjZTsKIAlpbnQg
cmV0OwogCi0JV0FSTih3ZGV2LT5oaWZfY21kLmJ1Zl9yZWN2ICYmIHdkZXYtPmhpZl9jbWQuYXN5
bmMsICJBUEkgdXNhZ2UgZXJyb3IiKTsKLQogCS8vIERvIG5vdCB3YWl0IGZvciBhbnkgcmVwbHkg
aWYgY2hpcCBpcyBmcm96ZW4KIAlpZiAod2Rldi0+Y2hpcF9mcm96ZW4pCiAJCXJldHVybiAtRVRJ
TUVET1VUOwpAQCAtNjksMTQgKzY3LDE4IEBAIGludCB3ZnhfY21kX3NlbmQoc3RydWN0IHdmeF9k
ZXYgKndkZXYsIHN0cnVjdCBoaWZfbXNnICpyZXF1ZXN0LAogCXdkZXYtPmhpZl9jbWQuYnVmX3Nl
bmQgPSByZXF1ZXN0OwogCXdkZXYtPmhpZl9jbWQuYnVmX3JlY3YgPSByZXBseTsKIAl3ZGV2LT5o
aWZfY21kLmxlbl9yZWN2ID0gcmVwbHlfbGVuOwotCXdkZXYtPmhpZl9jbWQuYXN5bmMgPSBhc3lu
YzsKIAljb21wbGV0ZSgmd2Rldi0+aGlmX2NtZC5yZWFkeSk7CiAKIAl3ZnhfYmhfcmVxdWVzdF90
eCh3ZGV2KTsKIAotCS8vIE5PVEU6IG5vIHRpbWVvdXQgaXMgY2F1Z2h0IGFzeW5jIGlzIGVuYWJs
ZWQKLQlpZiAoYXN5bmMpCisJaWYgKG5vX3JlcGx5KSB7CisJCS8vIENoaXAgd29uJ3QgcmVwbHku
IEdpdmUgZW5vdWdoIHRpbWUgdG8gdGhlIHdxIHRvIHNlbmQgdGhlCisJCS8vIGJ1ZmZlci4KKwkJ
bXNsZWVwKDEwMCk7CisJCXdkZXYtPmhpZl9jbWQuYnVmX3NlbmQgPSBOVUxMOworCQltdXRleF91
bmxvY2soJndkZXYtPmhpZl9jbWQubG9jayk7CiAJCXJldHVybiAwOworCX0KIAogCWlmICh3ZGV2
LT5wb2xsX2lycSkKIAkJd2Z4X2JoX3BvbGxfaXJxKHdkZXYpOwpAQCAtMTE4LDI5ICsxMjAsMjEg
QEAgaW50IHdmeF9jbWRfc2VuZChzdHJ1Y3Qgd2Z4X2RldiAqd2Rldiwgc3RydWN0IGhpZl9tc2cg
KnJlcXVlc3QsCiB9CiAKIC8vIFRoaXMgZnVuY3Rpb24gaXMgc3BlY2lhbC4gQWZ0ZXIgSElGX1JF
UV9JRF9TSFVUX0RPV04sIGNoaXAgd29uJ3QgcmVwbHkgdG8gYW55Ci0vLyByZXF1ZXN0IGFueW1v
cmUuIFdlIG5lZWQgdG8gc2xpZ2h0bHkgaGFjayBzdHJ1Y3Qgd2Z4X2hpZl9jbWQgZm9yIHRoYXQg
am9iLiBCZQotLy8gY2FyZWZ1bCB0byBvbmx5IGNhbGwgdGhpcyBmdW5jdGlvbiBkdXJpbmcgZGV2
aWNlIHVucmVnaXN0ZXIuCisvLyByZXF1ZXN0IGFueW1vcmUuIE9idmlvdXNseSwgb25seSBjYWxs
IHRoaXMgZnVuY3Rpb24gZHVyaW5nIGRldmljZSB1bnJlZ2lzdGVyLgogaW50IGhpZl9zaHV0ZG93
bihzdHJ1Y3Qgd2Z4X2RldiAqd2RldikKIHsKIAlpbnQgcmV0OwogCXN0cnVjdCBoaWZfbXNnICpo
aWY7CiAKLQlpZiAod2Rldi0+Y2hpcF9mcm96ZW4pCi0JCXJldHVybiAwOwogCXdmeF9hbGxvY19o
aWYoMCwgJmhpZik7CiAJaWYgKCFoaWYpCiAJCXJldHVybiAtRU5PTUVNOwogCXdmeF9maWxsX2hl
YWRlcihoaWYsIC0xLCBISUZfUkVRX0lEX1NIVVRfRE9XTiwgMCk7CiAJcmV0ID0gd2Z4X2NtZF9z
ZW5kKHdkZXYsIGhpZiwgTlVMTCwgMCwgdHJ1ZSk7Ci0JLy8gQWZ0ZXIgdGhpcyBjb21tYW5kLCBj
aGlwIHdvbid0IHJlcGx5LiBCZSBzdXJlIHRvIGdpdmUgZW5vdWdoIHRpbWUgdG8KLQkvLyBiaCB0
byBzZW5kIGJ1ZmZlcjoKLQltc2xlZXAoMTAwKTsKLQl3ZGV2LT5oaWZfY21kLmJ1Zl9zZW5kID0g
TlVMTDsKIAlpZiAod2Rldi0+cGRhdGEuZ3Bpb193YWtldXApCiAJCWdwaW9kX3NldF92YWx1ZSh3
ZGV2LT5wZGF0YS5ncGlvX3dha2V1cCwgMCk7CiAJZWxzZQogCQljb250cm9sX3JlZ193cml0ZSh3
ZGV2LCAwKTsKLQltdXRleF91bmxvY2soJndkZXYtPmhpZl9jbWQubG9jayk7CiAJa2ZyZWUoaGlm
KTsKIAlyZXR1cm4gcmV0OwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZf
dHguaCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4LmgKaW5kZXggZThhY2EzOWU3NDk3Li45
NjBkNWYyZmE0MWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4LmgKKysr
IGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHguaApAQCAtMjIsNyArMjIsNiBAQCBzdHJ1Y3Qg
d2Z4X2hpZl9jbWQgewogCXN0cnVjdCBtdXRleCAgICAgIGxvY2s7CiAJc3RydWN0IGNvbXBsZXRp
b24gcmVhZHk7CiAJc3RydWN0IGNvbXBsZXRpb24gZG9uZTsKLQlib29sICAgICAgICAgICAgICBh
c3luYzsKIAlzdHJ1Y3QgaGlmX21zZyAgICAqYnVmX3NlbmQ7CiAJdm9pZCAgICAgICAgICAgICAg
KmJ1Zl9yZWN2OwogCXNpemVfdCAgICAgICAgICAgIGxlbl9yZWN2OwotLSAKMi4yOC4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
