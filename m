Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF2B25F797
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 12:16:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA09085F0B;
	Mon,  7 Sep 2020 10:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vl0RKKvPpS1x; Mon,  7 Sep 2020 10:16:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C90485F11;
	Mon,  7 Sep 2020 10:16:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4AAD51BF964
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 10:16:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3D774204EF
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 10:16:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fv9tPfUYADCY for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 10:16:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2068.outbound.protection.outlook.com [40.107.93.68])
 by silver.osuosl.org (Postfix) with ESMTPS id AF6CC20528
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 10:16:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QJL/69MjgTqEiOWEuSGE9GMSJ/5cJKf1Xd6M9TaGj/m0qEjA5LWEVY+OHt4FuFRpeMEnogL7VjiL1/JJjcr29EZbFp2wspTA52LmWObvx6fgj6w8DJCO0lXA3DqD2Q6YPAbQnKkgeIgGmmYBiBYWbU2QPWq+JLAo1mr18FBg5EoBg34GyLxnpgVqEVK3aB/VJkId/JhhQ4cwJLm6Jk03pYir58F+4IBCoYDJjUrXUzDqvecoRXk1uaYEHlz6xercK01CIfllTfyirJXP3u8GAJAkBawnuMzlF72nL4qFCjezflD+HVaO7HqNhqR3kSKMT5nKedIiWDXMFttngcVfMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=44rGh7c9rRoaEPUVjEwmOUdbMciPK9yliP3dmgUdb1A=;
 b=iBOra6ZT8eePmYG/hvZ5RU+o6hwX1mMayY2qGRYJ2oB725tbLM+tX8OSydt2BcQoLl1yXmdRUXbdfISBH2TuWCLYLxS8+Dpp8wrXUF8dcD/gqaxNGma+XD/NPRbT4snc7zT/mSDUvuveQmRijjvUWNaik9r+Dm+TL2gYFYQrUmew14jy19pdQ8PY1xzn7N+CxohOwKcj9h/Hb2raerzCQPpwWgT7Zvdd/Jb0InC16Y+ixXaXeecLINfXHuo0IfxEQRM/KoTCc/6sR4J/y5mvsKZ/oryTDhhHCjmvsm9JJ+wU6PB9B2/7TN8hDSK7J+A1yBSNtkyhnrCfOckA6isFLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=44rGh7c9rRoaEPUVjEwmOUdbMciPK9yliP3dmgUdb1A=;
 b=eJYeuPK5jPpXni8h10jmhrMeTnIfaidzbFj8Ges1BaM6d7jsiFKVSqG/yT7BM7JmkvuHTzPzmotalJNHsx8cRMxy610ZGFlTpbh5qtGiOVc1LprRVkIh8mquCDogPJy4XNahgbInqR0msDsFHquAFaAWjd4dVq+y7hCrnTFHN6M=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2720.namprd11.prod.outlook.com (2603:10b6:805:56::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Mon, 7 Sep
 2020 10:16:32 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 10:16:32 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 29/31] staging: wfx: uniformize naming rules in hif_tx_mib.c
Date: Mon,  7 Sep 2020 12:15:19 +0200
Message-Id: <20200907101521.66082-30-Jerome.Pouiller@silabs.com>
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
 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 10:16:30 +0000
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3a8912fb-c26f-4a3a-463d-08d8531717cd
X-MS-TrafficTypeDiagnostic: SN6PR11MB2720:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB27201177022FD88574DF95F893280@SN6PR11MB2720.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fvK8FiUBEdm6rOQCjm1y7ugpcwlVP6tQdI0RmS5vpnNkbNtWp9DkNcW4PXcq1xVG8ZrpyAQvAUdv5IghHd4bFWC2BmEwRivKZUdx/hmxIrIbWSAYNDHWWfKJqkXmbiT0OpknUanW9Mm46ZSkcSuPDGyz/Rvee/0wc3kXCe1j7oqius+yPCq9ZSUOv4gcaJwmk9sqNVzIlhP0A1B97cLO+bXEAIF1vtewl9QhFcEo10dNXlWKJ5UE0TUa+pAl/ae+XazuGD+W1cVn2sMmF2vzzJtkhAN94fDhW0blph+bS6k+d3AkBiREbqhSp5eoK4hsqF2qxe0dZY9TtOcxsgGLKg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(39850400004)(136003)(346002)(396003)(66946007)(66556008)(66476007)(54906003)(26005)(186003)(16526019)(66574015)(83380400001)(107886003)(6486002)(8676002)(956004)(2616005)(2906002)(316002)(86362001)(8936002)(478600001)(4326008)(7696005)(36756003)(52116002)(6666004)(1076003)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: uhkgbAaTNXPZpi4mw9NV0t9j2FPJ8f3GopfvHvXyvqf41Qikh1UbDK7KzAVjq5QcLzJu6ChMIlJr5vH8xkgBseYYvWpP/EGIyaRDG+RwnxvW5KMDygcvgNDHfqmkMjckcOpg9Z+Sy1Hg/QIh6/o6l22nvAlOQw1nGjl1qDkwQfvpEN6CfJAOfrdAx+moTMZrAb1Xqfne6wogvWJBE+71VZjbxC8bjyHc9SpqtrRJHp7DBhk3Ti4P/rxW24cHi9U6EtkypJsHizN5SVBiv0BYFrSEcxxEp9fjbIiFTcK2CmUZQK1nogQsrhEyYK6xdeQu73Q77adVRkFAcKHH74ANA94VScBvVclskK6eKOm5VBGpV94x/HIsXLxb+j7ZqyyyZeELmOpQfyEZmRHwldWX8vAbGP4xEX9mDenVg7HeVAo5ByIDNBKREOvXoCuz3kxz83Lf1f5IkoEY9UHIXM7v4KEiPVGKSoglBuFumuA9R4++iTda9+qqSrTNpcwewVwJUEoHMqwUOijCeHJX4GmCEW4X5ibsfGUT9uBhqR6fdtDBBQvtX+6jVeavGr23JldNRkm9z24O0dOeAI6bPKLNvWj9lD7C4ouB0vhpLaju4R3F7+S0Q5/CQdiHoL+cPVE7g1lEXo0wUeTbH/EinGeVbw==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a8912fb-c26f-4a3a-463d-08d8531717cd
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 10:16:32.3276 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LzBVzyIvCRdHLrukSex/tQ67PyBnRRjCi3sUMGc33ceDFRaZ+OGqmCrO2wh4wl17OFzPl+Q/mKShir2q0nVC7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2720
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKaGlm
X3R4X21pYi5jIGNvbnRhaW5zIGZ1bmN0aW9ucyB0aGF0IGZvcm1hdCBkYXRhIHRvIGJlIHNlbnQg
dG8gdGhlCmhhcmR3YXJlLiBJbiB0aGlzIGZpbGUsIHNvbWV0aW1lIHRoZSBzdHJ1Y3QgdG8gYmUg
c2VudCBpcyBuYW1lZCAnYXJnJywKc29tZXRpbWUgJ3ZhbCcuIEluIHNvbWUgb3RoZXIgZnVuY3Rp
b24gJ3ZhbCcgaXMgdXNlZCBmb3IgdGhlIGFyZ3VtZW50IG9mCnRoZSBmdW5jdGlvbi4KClRoaXMg
cGF0Y2ggdW5pZm9ybWl6ZSB0aGUgdGhpbmdzIGFuZCBjaG9vc2UgdG8gY2FsbCBhbGwgdGhlIGRh
dGEgaW4KZGVzdGluYXRpb24gdG8gdGhlIGhhcmR3YXJlICdhcmcnIChub3RlIHRoaXMgY2hvaWNl
IGlzIG9ubHkgZGljdGF0ZWQgYnkKdGhlIG51bWJlciBvZiBsaW5lcyB0byBjaGFuZ2UgaW4gdGhl
IGNvZGUpCgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVy
QHNpbGFicy5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHhfbWliLmMgfCA1MCAr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI1IGluc2Vy
dGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93
ZngvaGlmX3R4X21pYi5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHhfbWliLmMKaW5kZXgg
MmViMmEyMDg5MGM3Li5jMzc1YjkwNTJhMDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93
ZngvaGlmX3R4X21pYi5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4X21pYi5jCkBA
IC0yOSw3ICsyOSw3IEBAIGludCBoaWZfc2V0X2JlYWNvbl93YWtldXBfcGVyaW9kKHN0cnVjdCB3
ZnhfdmlmICp3dmlmLAogCQkJCSB1bnNpZ25lZCBpbnQgZHRpbV9pbnRlcnZhbCwKIAkJCQkgdW5z
aWduZWQgaW50IGxpc3Rlbl9pbnRlcnZhbCkKIHsKLQlzdHJ1Y3QgaGlmX21pYl9iZWFjb25fd2Fr
ZV91cF9wZXJpb2QgdmFsID0geworCXN0cnVjdCBoaWZfbWliX2JlYWNvbl93YWtlX3VwX3Blcmlv
ZCBhcmcgPSB7CiAJCS53YWtldXBfcGVyaW9kX21pbiA9IGR0aW1faW50ZXJ2YWwsCiAJCS5yZWNl
aXZlX2R0aW0gPSAwLAogCQkud2FrZXVwX3BlcmlvZF9tYXggPSBsaXN0ZW5faW50ZXJ2YWwsCkBA
IC0zOSw3ICszOSw3IEBAIGludCBoaWZfc2V0X2JlYWNvbl93YWtldXBfcGVyaW9kKHN0cnVjdCB3
ZnhfdmlmICp3dmlmLAogCQlyZXR1cm4gLUVJTlZBTDsKIAlyZXR1cm4gaGlmX3dyaXRlX21pYih3
dmlmLT53ZGV2LCB3dmlmLT5pZCwKIAkJCSAgICAgSElGX01JQl9JRF9CRUFDT05fV0FLRVVQX1BF
UklPRCwKLQkJCSAgICAgJnZhbCwgc2l6ZW9mKHZhbCkpOworCQkJICAgICAmYXJnLCBzaXplb2Yo
YXJnKSk7CiB9CiAKIGludCBoaWZfc2V0X3JjcGlfcnNzaV90aHJlc2hvbGQoc3RydWN0IHdmeF92
aWYgKnd2aWYsCkBAIC05MiwzMSArOTIsMzEgQEAgaW50IGhpZl9zZXRfbWFjYWRkcihzdHJ1Y3Qg
d2Z4X3ZpZiAqd3ZpZiwgdTggKm1hYykKIGludCBoaWZfc2V0X3J4X2ZpbHRlcihzdHJ1Y3Qgd2Z4
X3ZpZiAqd3ZpZiwKIAkJICAgICAgYm9vbCBmaWx0ZXJfYnNzaWQsIGJvb2wgZmlsdGVyX3ByYnJl
cSkKIHsKLQlzdHJ1Y3QgaGlmX21pYl9yeF9maWx0ZXIgdmFsID0geyB9OworCXN0cnVjdCBoaWZf
bWliX3J4X2ZpbHRlciBhcmcgPSB7IH07CiAKIAlpZiAoZmlsdGVyX2Jzc2lkKQotCQl2YWwuYnNz
aWRfZmlsdGVyID0gMTsKKwkJYXJnLmJzc2lkX2ZpbHRlciA9IDE7CiAJaWYgKCFmaWx0ZXJfcHJi
cmVxKQotCQl2YWwuZndkX3Byb2JlX3JlcSA9IDE7CisJCWFyZy5md2RfcHJvYmVfcmVxID0gMTsK
IAlyZXR1cm4gaGlmX3dyaXRlX21pYih3dmlmLT53ZGV2LCB3dmlmLT5pZCwgSElGX01JQl9JRF9S
WF9GSUxURVIsCi0JCQkgICAgICZ2YWwsIHNpemVvZih2YWwpKTsKKwkJCSAgICAgJmFyZywgc2l6
ZW9mKGFyZykpOwogfQogCiBpbnQgaGlmX3NldF9iZWFjb25fZmlsdGVyX3RhYmxlKHN0cnVjdCB3
ZnhfdmlmICp3dmlmLCBpbnQgdGJsX2xlbiwKIAkJCQljb25zdCBzdHJ1Y3QgaGlmX2llX3RhYmxl
X2VudHJ5ICp0YmwpCiB7CiAJaW50IHJldDsKLQlzdHJ1Y3QgaGlmX21pYl9iY25fZmlsdGVyX3Rh
YmxlICp2YWw7Ci0JaW50IGJ1Zl9sZW4gPSBzdHJ1Y3Rfc2l6ZSh2YWwsIGllX3RhYmxlLCB0Ymxf
bGVuKTsKKwlzdHJ1Y3QgaGlmX21pYl9iY25fZmlsdGVyX3RhYmxlICphcmc7CisJaW50IGJ1Zl9s
ZW4gPSBzdHJ1Y3Rfc2l6ZShhcmcsIGllX3RhYmxlLCB0YmxfbGVuKTsKIAotCXZhbCA9IGt6YWxs
b2MoYnVmX2xlbiwgR0ZQX0tFUk5FTCk7Ci0JaWYgKCF2YWwpCisJYXJnID0ga3phbGxvYyhidWZf
bGVuLCBHRlBfS0VSTkVMKTsKKwlpZiAoIWFyZykKIAkJcmV0dXJuIC1FTk9NRU07Ci0JdmFsLT5u
dW1fb2ZfaW5mb19lbG10cyA9IGNwdV90b19sZTMyKHRibF9sZW4pOwotCW1lbWNweSh2YWwtPmll
X3RhYmxlLCB0YmwsIGZsZXhfYXJyYXlfc2l6ZSh2YWwsIGllX3RhYmxlLCB0YmxfbGVuKSk7CisJ
YXJnLT5udW1fb2ZfaW5mb19lbG10cyA9IGNwdV90b19sZTMyKHRibF9sZW4pOworCW1lbWNweShh
cmctPmllX3RhYmxlLCB0YmwsIGZsZXhfYXJyYXlfc2l6ZShhcmcsIGllX3RhYmxlLCB0YmxfbGVu
KSk7CiAJcmV0ID0gaGlmX3dyaXRlX21pYih3dmlmLT53ZGV2LCB3dmlmLT5pZCwKLQkJCSAgICBI
SUZfTUlCX0lEX0JFQUNPTl9GSUxURVJfVEFCTEUsIHZhbCwgYnVmX2xlbik7Ci0Ja2ZyZWUodmFs
KTsKKwkJCSAgICBISUZfTUlCX0lEX0JFQUNPTl9GSUxURVJfVEFCTEUsIGFyZywgYnVmX2xlbik7
CisJa2ZyZWUoYXJnKTsKIAlyZXR1cm4gcmV0OwogfQogCkBAIC0xMzQsMTMgKzEzNCwxMyBAQCBp
bnQgaGlmX2JlYWNvbl9maWx0ZXJfY29udHJvbChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwKIAogaW50
IGhpZl9zZXRfb3BlcmF0aW9uYWxfbW9kZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgZW51bSBoaWZf
b3BfcG93ZXJfbW9kZSBtb2RlKQogewotCXN0cnVjdCBoaWZfbWliX2dsX29wZXJhdGlvbmFsX3Bv
d2VyX21vZGUgdmFsID0geworCXN0cnVjdCBoaWZfbWliX2dsX29wZXJhdGlvbmFsX3Bvd2VyX21v
ZGUgYXJnID0gewogCQkucG93ZXJfbW9kZSA9IG1vZGUsCiAJCS53dXBfaW5kX2FjdGl2YXRpb24g
PSAxLAogCX07CiAKIAlyZXR1cm4gaGlmX3dyaXRlX21pYih3ZGV2LCAtMSwgSElGX01JQl9JRF9H
TF9PUEVSQVRJT05BTF9QT1dFUl9NT0RFLAotCQkJICAgICAmdmFsLCBzaXplb2YodmFsKSk7CisJ
CQkgICAgICZhcmcsIHNpemVvZihhcmcpKTsKIH0KIAogaW50IGhpZl9zZXRfdGVtcGxhdGVfZnJh
bWUoc3RydWN0IHdmeF92aWYgKnd2aWYsIHN0cnVjdCBza19idWZmICpza2IsCkBAIC0xNjEsMzYg
KzE2MSwzNiBAQCBpbnQgaGlmX3NldF90ZW1wbGF0ZV9mcmFtZShzdHJ1Y3Qgd2Z4X3ZpZiAqd3Zp
Ziwgc3RydWN0IHNrX2J1ZmYgKnNrYiwKIAogaW50IGhpZl9zZXRfbWZwKHN0cnVjdCB3Znhfdmlm
ICp3dmlmLCBib29sIGNhcGFibGUsIGJvb2wgcmVxdWlyZWQpCiB7Ci0Jc3RydWN0IGhpZl9taWJf
cHJvdGVjdGVkX21nbXRfcG9saWN5IHZhbCA9IHsgfTsKKwlzdHJ1Y3QgaGlmX21pYl9wcm90ZWN0
ZWRfbWdtdF9wb2xpY3kgYXJnID0geyB9OwogCiAJV0FSTihyZXF1aXJlZCAmJiAhY2FwYWJsZSwg
ImluY29oZXJlbnQgYXJndW1lbnRzIik7CiAJaWYgKGNhcGFibGUpIHsKLQkJdmFsLnBtZl9lbmFi
bGUgPSAxOwotCQl2YWwuaG9zdF9lbmNfYXV0aF9mcmFtZXMgPSAxOworCQlhcmcucG1mX2VuYWJs
ZSA9IDE7CisJCWFyZy5ob3N0X2VuY19hdXRoX2ZyYW1lcyA9IDE7CiAJfQogCWlmICghcmVxdWly
ZWQpCi0JCXZhbC51bnBtZl9hbGxvd2VkID0gMTsKKwkJYXJnLnVucG1mX2FsbG93ZWQgPSAxOwog
CXJldHVybiBoaWZfd3JpdGVfbWliKHd2aWYtPndkZXYsIHd2aWYtPmlkLAogCQkJICAgICBISUZf
TUlCX0lEX1BST1RFQ1RFRF9NR01UX1BPTElDWSwKLQkJCSAgICAgJnZhbCwgc2l6ZW9mKHZhbCkp
OworCQkJICAgICAmYXJnLCBzaXplb2YoYXJnKSk7CiB9CiAKIGludCBoaWZfc2V0X2Jsb2NrX2Fj
a19wb2xpY3koc3RydWN0IHdmeF92aWYgKnd2aWYsCiAJCQkgICAgIHU4IHR4X3RpZF9wb2xpY3ks
IHU4IHJ4X3RpZF9wb2xpY3kpCiB7Ci0Jc3RydWN0IGhpZl9taWJfYmxvY2tfYWNrX3BvbGljeSB2
YWwgPSB7CisJc3RydWN0IGhpZl9taWJfYmxvY2tfYWNrX3BvbGljeSBhcmcgPSB7CiAJCS5ibG9j
a19hY2tfdHhfdGlkX3BvbGljeSA9IHR4X3RpZF9wb2xpY3ksCiAJCS5ibG9ja19hY2tfcnhfdGlk
X3BvbGljeSA9IHJ4X3RpZF9wb2xpY3ksCiAJfTsKIAogCXJldHVybiBoaWZfd3JpdGVfbWliKHd2
aWYtPndkZXYsIHd2aWYtPmlkLCBISUZfTUlCX0lEX0JMT0NLX0FDS19QT0xJQ1ksCi0JCQkgICAg
ICZ2YWwsIHNpemVvZih2YWwpKTsKKwkJCSAgICAgJmFyZywgc2l6ZW9mKGFyZykpOwogfQogCiBp
bnQgaGlmX3NldF9hc3NvY2lhdGlvbl9tb2RlKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBpbnQgYW1w
ZHVfZGVuc2l0eSwKIAkJCSAgICAgYm9vbCBncmVlbmZpZWxkLCBib29sIHNob3J0X3ByZWFtYmxl
KQogewotCXN0cnVjdCBoaWZfbWliX3NldF9hc3NvY2lhdGlvbl9tb2RlIHZhbCA9IHsKKwlzdHJ1
Y3QgaGlmX21pYl9zZXRfYXNzb2NpYXRpb25fbW9kZSBhcmcgPSB7CiAJCS5wcmVhbWJ0eXBlX3Vz
ZSA9IDEsCiAJCS5tb2RlID0gMSwKIAkJLnNwYWNpbmcgPSAxLApAQCAtMjAwLDcgKzIwMCw3IEBA
IGludCBoaWZfc2V0X2Fzc29jaWF0aW9uX21vZGUoc3RydWN0IHdmeF92aWYgKnd2aWYsIGludCBh
bXBkdV9kZW5zaXR5LAogCX07CiAKIAlyZXR1cm4gaGlmX3dyaXRlX21pYih3dmlmLT53ZGV2LCB3
dmlmLT5pZCwKLQkJCSAgICAgSElGX01JQl9JRF9TRVRfQVNTT0NJQVRJT05fTU9ERSwgJnZhbCwg
c2l6ZW9mKHZhbCkpOworCQkJICAgICBISUZfTUlCX0lEX1NFVF9BU1NPQ0lBVElPTl9NT0RFLCAm
YXJnLCBzaXplb2YoYXJnKSk7CiB9CiAKIGludCBoaWZfc2V0X3R4X3JhdGVfcmV0cnlfcG9saWN5
KHN0cnVjdCB3ZnhfdmlmICp3dmlmLAotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
