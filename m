Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEB14118FB
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Sep 2021 18:12:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7626382D14;
	Mon, 20 Sep 2021 16:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6bplo2ILqviw; Mon, 20 Sep 2021 16:12:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF61682C04;
	Mon, 20 Sep 2021 16:12:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CBD91BF3D5
 for <devel@linuxdriverproject.org>; Mon, 20 Sep 2021 16:11:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86ABF608F3
 for <devel@linuxdriverproject.org>; Mon, 20 Sep 2021 16:11:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id boL7cQpq4-Yi for <devel@linuxdriverproject.org>;
 Mon, 20 Sep 2021 16:11:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2048.outbound.protection.outlook.com [40.107.92.48])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EBAA060817
 for <devel@driverdev.osuosl.org>; Mon, 20 Sep 2021 16:11:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J33kfZ+1cW1fTLNeDsQFyYqwFp53racN2ILzyrKGYY8VNi+b9TzNfRKf914pbzpB8W2nGYb/oIS8viGaaE79sRajCjoaV5BuiNG4a7WG7zqEDajajQHnt+NNUGu5THHP8G5DvUXefaBEuW1DJrOBxICXUHla9MTb9eKgEyYPXN2hHOOhAD1x2PGmw2eo9DpfmUBrj8sBDAEFy6g2Vr5RABLk0eVLPJAnhwcgbYK9eSE4G1KyS9LUbqMQ0roPYBgW3r2b57qQyzmrUaGTi5kciczrsbJFMZ/2VB5J5YikGZx4fM/bL0a22tRgvrSSGXIM/Uagh8KDkgQ5zjnjEFxTpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=IyY90r6QMFMHTI+VFb7nrT6DVJW15/DHuG0/svc2nKU=;
 b=H6LQPMENJRstnuhFaL5UwyN+NFYrrMlO84WBfTsTsI19PVyrcuyDJHfjJ4ToOe4ucJWuZzi9dKC74mzqT4BaakzydCLOci2gXX0PxL9xyES3RsTWiNKE865mLD8TvZpR+wwocSTH/+92my52FiWeA5CMaGVMK5Xw7AmmpQ70G5v81q65bVhyHJr6pBDsnjkSoSAuRWnP+QfDfYfoCeJJzWHwPTk0LhvpYB2lU2Sf/qXN2NDYqzwY6YZP38NWjkk8ykfg+l6A0JLKtQO15FvlQ5c1u488jrJeYb10AYaGN9PErBh85aLpGo6wPrZGwRj88Y+oLcEqt5zIDXKM0eOAJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IyY90r6QMFMHTI+VFb7nrT6DVJW15/DHuG0/svc2nKU=;
 b=TDtrY0dNYq7bkF+lPXoOhd5ExgfKWw54dGzdeHaop02dMijr+/Yfw4aBl4ZWHkjqohJ+VUd0ZTv4ly7Je7brSPzMfFejNbcLAL9aWNf7YpS4l39hW4OADGm7olRYIxL57a4hsSxcR3TGHggUwo2x9lA5Oq17OKfrfBBS9fI76C0=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA2PR11MB5002.namprd11.prod.outlook.com (2603:10b6:806:fb::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Mon, 20 Sep
 2021 16:11:55 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4523.018; Mon, 20 Sep 2021
 16:11:55 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v7 01/24] mmc: sdio: add SDIO IDs for Silabs WF200 chip
Date: Mon, 20 Sep 2021 18:11:13 +0200
Message-Id: <20210920161136.2398632-2-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SA0PR11CA0064.namprd11.prod.outlook.com
 (2603:10b6:806:d2::9) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
Received: from pc-42.silabs.com (2a01:e34:ecb5:66a0:9876:e1d7:65be:d294) by
 SA0PR11CA0064.namprd11.prod.outlook.com (2603:10b6:806:d2::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Mon, 20 Sep 2021 16:11:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3ca91d95-524d-4989-b469-08d97c515daa
X-MS-TrafficTypeDiagnostic: SA2PR11MB5002:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA2PR11MB5002220CF429832DCF74686B93A09@SA2PR11MB5002.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nvENJ9D9ITvMcToeSe9b5DmBOSwqPaZ1G/bJOiT8PUUvl/GHbdNDAnC/43uxZJHIBOzfk3pFVx7qgiZGWIu48xvpyxVi5x8ltoK+AkqwQ5/Y3VKvmDBGDcP9VjE3rozdjxoSIV6jLdKqDo/6Pp+aWc5+tfbnk2pqZ8j2mBqOR7cPDehz24rZiPBMr6k3TlaAlXel4p+mCwUvnqHbkwqbeuAX55gIhJZ37vTJn0NxgiJa+Nmcj+r4RnaO7YHTKm14Jq+EfMprZgFAMu+DozauVnHj3QQ87DEZIU/xYIVUNPmBdHRTw20JKpoCq5XIEfbDEHAU3lkhiEpH5iqi7nElwibvGOhOe5f5L9QxexawTMX+2yKE+orfoIsnHpCMCz2y3u5YBSvx5BG2ZfWixmyUO2k4IDGBXsgU1KQVwKfyyQKjGLoFoXolmKnMJTBT1DtBUtQdan+OA+w+IW3tv+K2wQeWLmNA7oXTRwmfk82NIyYx7EnmSUJVVpBCeWjkEvZ1lNffMgl1VZchlA/eFMymEBF6kkb6bD6D8SK7dMB9UQFcjfCTGvBxLIPWXTjvdCIdMchfyDxLWqbdBj5y5u7ZW9jJnLoxOaIMudVf3g5F/K0LSri14FZB5oopHlj+np35i6f78N95k0QtewJ4Oa3J/Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66476007)(36756003)(2616005)(66556008)(107886003)(186003)(54906003)(5660300002)(6486002)(66946007)(52116002)(38100700002)(7696005)(6916009)(2906002)(1076003)(4326008)(4744005)(8936002)(316002)(8676002)(508600001)(86362001)(6666004)(7416002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: rVRdA4PGHp8ciu6e+wzmlLqK3MUgAwafnMquSP8mSZdoloc7vn4DcHXKacgvoHjwIoPj2GTcSed9rq0IM5LaqwKB6DJbYlrUlGKzvWoA0R88XJiEJsiG9O1jAXABh7hIR2CErLyMUkm15TiWi+LRDTfF5bfzqjOT9HsWVY4HrzB86g6qq0GvmNPIVwhNqkWvWlmAJX1cdXcp1GbUm5yoYXnYEVG3hRpBvrdgKMa6gzUocEEzRqj/r1zI+kpPIDg0RudrbqmOJEE/B3eWLikAMlnlaHxvkfgruDMShFrNfGg+yEhwyyEivK32rqh1YHrOzxA/18qmmyKR9HkC4y+imI+LR+J7ecAkFzVbndY7qOkBpX4Zn0HVFAhZVw9Yt0JivVziFcZsg/BT8lXxPN4zr/S+feiIc+kFsEqCIrphqFi9tPa/9OP9cpaFWzjeB+sCVQlok1cW3ksvVRzvenfscxLC8bVJtW35t55tvyDm8MGQT9asbMALMr+68bSQ6KhxpjHL3n6359y3bbnhU7VxK7Q7Qyf9qTagEe24rkLjgt87aH0jqJgdxgSzYE66XC0t/H/ajID7mBQL0w40/noMj2un/ozrSiF9LC48nwsbGtLiMo6INfWbJ8KBOAQMXhYnardYWPHJC53JymyiPf8nwM8Pp8Np88QDZaq8vcWxLy0VXrKTCwtHv64hTXU5r3YheIN8UuWMQyZPX2FfotI3IoqsBYicYMrkUSkEmo12APZBWG18s8XwWHDKFinbaiDn+cpwTbmcAQEhJQAqZRfOjRawPvG9/9RCMj4pHiZrxzNvh585e6PdDjB2/P0G+tsU
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ca91d95-524d-4989-b469-08d97c515daa
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2021 16:11:55.7817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H6YfIPJHVawO+7zHDUAwS93ZiuIECV8lD1BSzU0VInpJi0AImPUn7KzOJNUH6rPx+uvLVXISDezixyXDHDmBPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5002
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKQWRk
IFNpbGFicyBTRElPIElEIHRvIHNkaW9faWRzLmguCgpOb3RlIHRoYXQgdGhlIHZhbHVlcyB1c2Vk
IGJ5IFNpbGFicyBhcmUgdW5jb21tb24uIEEgZHJpdmVyIGNhbm5vdCBmdWxseQpyZWx5IG9uIHRo
ZSBTRElPIFBuUC4gSXQgc2hvdWxkIGFsc28gY2hlY2sgaWYgdGhlIGRldmljZSBpcyBkZWNsYXJl
ZCBpbgp0aGUgRFQuCgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBv
dWlsbGVyQHNpbGFicy5jb20+Ci0tLQogaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaCB8IDcg
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmggYi9pbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5o
CmluZGV4IGE4NWM5ZjBiZDQ3MC4uNDgzNjkyZjMwMDJhIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xp
bnV4L21tYy9zZGlvX2lkcy5oCisrKyBiL2luY2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmgKQEAg
LTI1LDYgKzI1LDEzIEBACiAgKiBWZW5kb3JzIGFuZCBkZXZpY2VzLiAgU29ydCBrZXk6IHZlbmRv
ciBmaXJzdCwgZGV2aWNlIG5leHQuCiAgKi8KIAorLyoKKyAqIFNpbGFicyBkb2VzIG5vdCB1c2Ug
YSByZWxpYWJsZSB2ZW5kb3IgSUQuIFRvIGF2b2lkIGNvbmZsaWN0cywgdGhlIGRyaXZlcgorICog
d29uJ3QgcHJvYmUgdGhlIGRldmljZSBpZiBpdCBpcyBub3QgYWxzbyBkZWNsYXJlZCBpbiB0aGUg
RFQuCisgKi8KKyNkZWZpbmUgU0RJT19WRU5ET1JfSURfU0lMQUJTCQkJMHgwMDAwCisjZGVmaW5l
IFNESU9fREVWSUNFX0lEX1NJTEFCU19XRjIwMAkJMHgxMDAwCisKICNkZWZpbmUgU0RJT19WRU5E
T1JfSURfU1RFCQkJMHgwMDIwCiAjZGVmaW5lIFNESU9fREVWSUNFX0lEX1NURV9DVzEyMDAJCTB4
MjI4MAogCi0tIAoyLjMzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
