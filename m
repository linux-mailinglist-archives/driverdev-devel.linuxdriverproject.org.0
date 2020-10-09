Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD34D288FA9
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 19:13:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8863D877C4;
	Fri,  9 Oct 2020 17:13:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fNcQGEwjwnCO; Fri,  9 Oct 2020 17:13:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0A75C877B5;
	Fri,  9 Oct 2020 17:13:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA96C1BF9BD
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 17:13:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C79EF877B7
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 17:13:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pTczTYqK68ut for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 17:13:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2054.outbound.protection.outlook.com [40.107.236.54])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B2411877B4
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 17:13:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BXmiV0YOeM1eeJWAEJ7fD+wGR/P6hGPmZf1g9XofBpd1Hd+OJcnOtkBeBNjsiopkd1Gk8ctg9CqnP/Nlz+GiSc2QIj/yEZ3zwyD405pRdjuRC4qdm4OXrtcFqOEeGw3Q7o3R783bD1dHW09LC4W5JPuJiC9RQyN4uHyUm9pOrm/cv9J02nwHQmIf9jpcvzXdnu/BY+SBigO0d9MY8HKYfRg6kFSkfG5I0JTcx2q0FNeJ0VVk9+FwLUGDmh0DW+AC8z/WTesyMDB9e1dwGoF20tqOqQO5kyuxpWoSCWK5eAttIZoDSATK6KMox5jTHm+py5t/y7T3H50eSQ2Cd5THgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QtasuF9Nudblhbs014fYVVwK2tUkPpLxKPDVvj58WjM=;
 b=D+EEzCnmoaRjoz3SrG5yxoFPxabH6V9mvbwF3HIrWDWuKXnmwApxPqPAFOp1H6tG+NBqixLkMv0y3NjCQgtyE4JzBeZO3M1HnCxfXCwiyAPsni3BI60BVrHH09qhuPIS0M2TZE8TIrYsQP9bHmGNFvIcRu5WG/jqxXmNv1P87QqMxR/JhYHA9LYMVGEojb5c0bKLuib4son0tMcfPyMmXrtSLn+ODHUz0n0ZrGBJp9zSj8PkrxyyeRtD0ZJ406c+JX6TdKUf9m11aibE+ZvVx2OuqXDYJcIpq1E1X+vHEp30llCy1E6i/pEkwaCuxZv1ngFfXejwfgA6OE8o1Px66g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QtasuF9Nudblhbs014fYVVwK2tUkPpLxKPDVvj58WjM=;
 b=fp6G5OzvCgpTir0ZHpjTgAZbvQtxw6i9DBrgXlND/78GRd5/oOKUQEPDfaukCAk1pxyFFz7lNIn1mO6N3IRAe5v0bxRgO9nOdkYi/iv8Upms+EInxwcH39niQpHcgqVgd7H2JjtjbAjOMsMB7KLzZfjg63kQgknm2i+4t7dQRlk=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB3455.namprd11.prod.outlook.com (2603:10b6:805:bb::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.22; Fri, 9 Oct
 2020 17:13:34 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3455.024; Fri, 9 Oct 2020
 17:13:33 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 6/8] staging: wfx: gpiod_get_value() can return an error
Date: Fri,  9 Oct 2020 19:13:05 +0200
Message-Id: <20201009171307.864608-7-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201009171307.864608-1-Jerome.Pouiller@silabs.com>
References: <20201009171307.864608-1-Jerome.Pouiller@silabs.com>
X-Originating-IP: [82.67.86.106]
X-ClientProxiedBy: SA9PR10CA0004.namprd10.prod.outlook.com
 (2603:10b6:806:a7::9) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (82.67.86.106) by
 SA9PR10CA0004.namprd10.prod.outlook.com (2603:10b6:806:a7::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.24 via Frontend Transport; Fri, 9 Oct 2020 17:13:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6b2fa867-46cd-471e-09eb-08d86c76a6ef
X-MS-TrafficTypeDiagnostic: SN6PR11MB3455:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB345519434A9551ACB868237E93080@SN6PR11MB3455.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:346;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jo+Hu6pyok/TKJgjq/XfIVcGpFawVDxSbI9hwc3c84kGbw90wO4CoLC1XQ6NBjHv8GB8PtZv9Ip6DXh992FxZUf+zC2ymW1Z8s0lDviTMlZlZN5bK07OulACw4qTSDw/46827NLUhGV/i36OR727+3VXPVL73jTwOxb010vps2boX9lmzZ/ZgLypiinD7mhAjvwWw/hLzhLOf61l0xqD5avB0Zx76nMXrpd0Hhq0Fo9bWFHbhnD9D79Ts1FGUcCfwWFYIAHgBNlVZgpc3ZEs+CErjJkQh/PdMLRKFkG7E6X/AaoT6ZLIliG/Gt6O1FbTZ15gsTYZKM16kuAi2Of3Sg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(376002)(39850400004)(396003)(136003)(8936002)(36756003)(54906003)(1076003)(316002)(52116002)(7696005)(2906002)(5660300002)(478600001)(86362001)(4326008)(66946007)(66556008)(66476007)(6666004)(107886003)(26005)(16526019)(2616005)(83380400001)(186003)(8676002)(956004)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: RQ5LmjiL6egQfY+7k8LxLdW9rBIHeMuPYifzjscuV6/SzmD11q/IK4PL1LhRhup5l/nXTbn1TojXKw+2GkVOdu4HTGdbrxFScBLysV67m8UrzM17T00SnmvCVAtHhKLE+7s5Euh7fgH7TNxCKnpg2cf93nZwg2lEkBp0i33ZMA/Ng64WB4W9s5KgF7ZtWI8J8b7rgCeugVOaqUsCF59GQxCWJzHsKdFskSLoeEPilJs0ZXSQUmUIjVYXfnuAHEdYhDxGg6/BOzztsDQWj6l/M98kwDg4cQ+xOvhxiMX6rf3dr6yY2lBrDy4KhCcFew3Yj6kIgJ6lVjdNkeZe2Ojf+bIfEGcUvUYumL+WX9LqpYG4kXHUhhNmkHp2iWk9Te9E61zaqjFL6UINq3KQeFTmQgW9OtwdzetHlcBLi9xChrC2eg3IxLoG3As1wthf0WdssI4A0vmfYOY/R4BwZh8Sv3AqtH5I5QzHhkSwrYP2ANG0S9eLhd8r+cKr284kzqg9chJPnYuqsoH0aHu5qYwtTDitAnR8U7tE7HYvYsjM2EjuRL53JSQke0OZu7od91fNf1lu2f2I9WtXK35Ztbt1i3QMcXQqjvon9g1dEzbUHfuX4vaPon/+FTuZ6QWY7au7YjyGCi1tR3zHZ+rFIIGhow==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b2fa867-46cd-471e-09eb-08d86c76a6ef
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2020 17:13:33.8317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 03danYsUsPm+83G8UUavX00OUuzo6XmDzzzMLhEj4QDp0zTc3XYOs27tR3TxCtx3+krolJM6Lhld8P/bcJES5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3455
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
 Kalle Valo <kvalo@codeaurora.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU21h
dGNoIGNvbXBsYWluczoKCiAgICBoaWZfcnguYzo5OCBoaWZfd2FrZXVwX2luZGljYXRpb24oKSB3
YXJuOiAnZ3Bpb2RfZ2V0X3ZhbHVlKHdkZXYtPnBkYXRhLmdwaW9fd2FrZXVwKScgcmV0dXJucyBw
b3NpdGl2ZSBhbmQgbmVnYXRpdmUKICAgIGJoLmM6MjQgZGV2aWNlX3dha2V1cCgpIHdhcm46ICdn
cGlvZF9nZXRfdmFsdWVfY2Fuc2xlZXAod2Rldi0+cGRhdGEuZ3Bpb193YWtldXApJyByZXR1cm5z
IHBvc2l0aXZlIGFuZCBuZWdhdGl2ZQoKUmVwb3J0ZWQtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5j
YXJwZW50ZXJAb3JhY2xlLmNvbT4KU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGpl
cm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvYmguYyAg
ICAgfCAyICstCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9yeC5jIHwgNCArKy0tCiAyIGZpbGVz
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmMKaW5kZXgg
NTg2Yjc2OWMwNDQ2Li4yZmZhNTg3YWVmYWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93
ZngvYmguYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmMKQEAgLTIxLDcgKzIxLDcgQEAg
c3RhdGljIHZvaWQgZGV2aWNlX3dha2V1cChzdHJ1Y3Qgd2Z4X2RldiAqd2RldikKIAogCWlmICgh
d2Rldi0+cGRhdGEuZ3Bpb193YWtldXApCiAJCXJldHVybjsKLQlpZiAoZ3Bpb2RfZ2V0X3ZhbHVl
X2NhbnNsZWVwKHdkZXYtPnBkYXRhLmdwaW9fd2FrZXVwKSkKKwlpZiAoZ3Bpb2RfZ2V0X3ZhbHVl
X2NhbnNsZWVwKHdkZXYtPnBkYXRhLmdwaW9fd2FrZXVwKSA+PSAwKQogCQlyZXR1cm47CiAKIAlp
ZiAod2Z4X2FwaV9vbGRlcl90aGFuKHdkZXYsIDEsIDQpKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvd2Z4L2hpZl9yeC5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcnguYwppbmRl
eCAyZDQyNjUyNTcxMTIuLmY5OTkyMWU3NjA1OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5n
L3dmeC9oaWZfcnguYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9yeC5jCkBAIC05NCw4
ICs5NCw4IEBAIHN0YXRpYyBpbnQgaGlmX3N0YXJ0dXBfaW5kaWNhdGlvbihzdHJ1Y3Qgd2Z4X2Rl
diAqd2RldiwKIHN0YXRpYyBpbnQgaGlmX3dha2V1cF9pbmRpY2F0aW9uKHN0cnVjdCB3ZnhfZGV2
ICp3ZGV2LAogCQkJCSBjb25zdCBzdHJ1Y3QgaGlmX21zZyAqaGlmLCBjb25zdCB2b2lkICpidWYp
CiB7Ci0JaWYgKCF3ZGV2LT5wZGF0YS5ncGlvX3dha2V1cAotCSAgICB8fCAhZ3Bpb2RfZ2V0X3Zh
bHVlKHdkZXYtPnBkYXRhLmdwaW9fd2FrZXVwKSkgeworCWlmICghd2Rldi0+cGRhdGEuZ3Bpb193
YWtldXAgfHwKKwkgICAgZ3Bpb2RfZ2V0X3ZhbHVlKHdkZXYtPnBkYXRhLmdwaW9fd2FrZXVwKSA9
PSAwKSB7CiAJCWRldl93YXJuKHdkZXYtPmRldiwgInVuZXhwZWN0ZWQgd2FrZS11cCBpbmRpY2F0
aW9uXG4iKTsKIAkJcmV0dXJuIC1FSU87CiAJfQotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
