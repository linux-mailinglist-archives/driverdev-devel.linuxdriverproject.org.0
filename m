Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D280C1BA4F9
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 15:41:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 47CE9220D6;
	Mon, 27 Apr 2020 13:41:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CwAVnE-VJLRl; Mon, 27 Apr 2020 13:41:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3DB0A204E6;
	Mon, 27 Apr 2020 13:41:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3FBFA1BF38C
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 13:41:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3C92C8665D
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 13:41:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JxO75e5KEs0w for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 13:41:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2066.outbound.protection.outlook.com [40.107.244.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 907188663C
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 13:41:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gmnXzy+iJ9rddlLIdowG5oVRCuzdIB9+LvaeSs5F+wqdL65eDLMMmjHXPRPbYgdeDaEVP7tDrBmFsVaEtsiPv7xfep1y435knj8x60Js4qLtZ2yNKW4gmpOviraXP0NSFlalQ2lna6ZO7Y4a+ogG2FLTury7xgLnmrytAssG8MF1UuuszpnbUlELVEpIeqI7UrPnp/CMp8X4e3gxQ0w76Tu5CPAmQ5VZIFg5uToexepiiR/c/MhJQeMi5gKJ7gn2KW5pY/l7q0EgnjNpoazdGLc5zoIHHNi4xmzS2FRNsf7xo6KPljbKxjf39GSPwH/8owaxDpxequU/PQb1O6pGlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SlhKzyyAtScIwXKv8cVUaj8lHOyXNli0M2jDxTxuPXU=;
 b=ZPEIZkQm2URl2NHBhN7lHzIB9YjLks8nQa3ydMYuvic7fdA5pTWUaxIGVLmoOeKOS+xbjYI3j1KBR3k2wU+DXRlOms5014iT5TyvcOfYza7v03b6H2Ul29sr+cfXnc0pSMXsmH8RKazHvrTh4zXs5B6KbpRArf5gCaXzYWatZa1XW/yJbl7LBhUoaM9VerP5FwvBm8no5+e816O8rg1i3VllS8lAZyV7a2JMbnzT9hod835CgXm5JIfwYSoPN899aC0kWCEvW72nuHOmgCa49+vTEikJhYU+LeOl+Z3cPp3StXHNaSERzyV3QzxyiwFt4sn3hXcaInmU2W1L4AyqBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SlhKzyyAtScIwXKv8cVUaj8lHOyXNli0M2jDxTxuPXU=;
 b=PH6q/l8bFSDa6YcUS/a/OBtgKevYsgSTDUQOjyCWRkMpdDLQrNCuNxIWBkqBHzzawUo5fGpfB8PLsB7bAYNeyGhN6vFNosX2K0k3KH9C0D7S4DUAoWwLt4EOKr/ifHaNJBsgZ6YqnaGdhhsJxOXkmvMmt8PAaSnT5JWiu7t3mGw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1424.namprd11.prod.outlook.com (2603:10b6:300:26::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Mon, 27 Apr
 2020 13:41:14 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2937.023; Mon, 27 Apr
 2020 13:41:14 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 06/17] staging: wfx: add support for 'device too hot'
 indication
Date: Mon, 27 Apr 2020 15:40:20 +0200
Message-Id: <20200427134031.323403-7-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200427134031.323403-1-Jerome.Pouiller@silabs.com>
References: <20200427134031.323403-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0232.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1e::28) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 PR0P264CA0232.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1e::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Mon, 27 Apr 2020 13:41:12 +0000
X-Mailer: git-send-email 2.26.1
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a77beb1d-a777-4835-263b-08d7eab0a797
X-MS-TrafficTypeDiagnostic: MWHPR11MB1424:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1424054F98EF185D8188083193AF0@MWHPR11MB1424.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
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
X-Microsoft-Antispam-Message-Info: HHEUaZedoOewOMkJPyiW3sePv4XO1kWXSriNS38xlQTLYMW82EWi8qCuBxat/B9X3CdZizz7Jaxfi5KKO+IjzoVCy/rZ9D8r1DSz2lW67eHMjJKkoDabKhEVcTMeuxyUyvjn4FVUTSxRtn6uyh7Oqx+UDaO1VRq4wMgUK3lsponmJaL5Tw/5e2k5EvjRMLQTAyZsid/IHJh1EsFMgyb4rFoOOk4X/eYxfOsj0ojJatQOllZjNRU861ZaGRXeTD+41HrRBLqP6IVFdRTTirrxf+IXWxQEU7cvHP01EKFG3xfejhFX5gL1X7Gy+65JmdKuYdZRFz1G/vjz3kqymrqa3MCXcs0vgNo9fhLypRtstR54qEoj1wnMVoJvwGohX7uI56PGbCky36usY9nKA7DYNBKWZxeIea1WGeeN4EeGK9HMCtf+ZNLl2M+mInpLZaA6
X-MS-Exchange-AntiSpam-MessageData: kj7qXx4KZf2ZMjTXuGuyVdMtnlS3kCY9Ogw/GbhKTki69jgz0SB4QsQnnsGN1V5iQjrNPWMSw0ToBR9sm6IoN0UCOJeO26WDgSDJyOaAU4c23QdOPIrCU/A8FyVwrBRDi0DSGi0ioKAFgW6bs6+yv/CipRjprmU10zY+W9+h+S1dOTr50Y0HdbfdLkiiQcOgm7Vr29lMp8WZxAIsZpEonhjibjACoUDAkRBEThr00ld9MNLDAhcZSeJDutmhfRyXvPrMDdadodwaYH7puLn0cLYUuFF/9oi6VAr4Wvj60NzHLiwr3DBwL9J1nBs8dYm1gch6v0NIR/ClcXsgWp2TzG829q87EUFfws43LXxVFVScy8+ktAGYTayBxqTR88ehMHbZKLBESId8088TKmme/KC9qlBwW9S529XtCl480NqG+N5t/UeoGP6A1iggyxkb3vbzN6w8zm2Cr8ZvsKPq9WkksUJZPoXfFbJbOemC/ZDJiDwderQCPg12soFM6ffu7XioOfCAUFPRRJc8Op2YwqHvpDCo3VXp0YmROo9kRyRd6dabCUIPCA5JS9wkabAZHv0/1Ul7Aotg5k1SV5bWz56Rj4+grFBT617+2aUysrLyLP7qqaFIqFBhoTPCfBJKfT5Fsat09o+5OlXXMvHshg371yGUvPA+CKFn7ruv1qpPG79pK5T20xfd3Old5jGrnnCXQCjpNjJ0XxT3e/oxknin0xcY2VpBr5OApSmbNZMZXG7im9MlKjotKFJJ5Ypgbe7WliGBCgpW2YSqQYkF0Kf5qJV+jua3TULIvY4mLtW7+EwiDUyzhJf6vxTgXnmzqojdVmLv4QIZkAAhkZ9Me357FJneFNaPOWgi8v3FAN8=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a77beb1d-a777-4835-263b-08d7eab0a797
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2020 13:41:14.5517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y1jvPNCSFKMSmz/in69MBJoPYIUA3Gr31IcpgwuN8+3XNHFk6h4NP7iLOCWPIdw78mWjLWnFM0BTEsiYebtcWw==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKRGV2
aWNlIGlzIGFibGUgdG8gZGV0ZWN0IGEgaGlnaCB0ZW1wZXJhdHVyZS4gSW4gdGhpcyBjYXNlLCB0
aGUgdHJhZmZpYwppcyBub3QgYWxsb3dlZCB0byBiZSBzZW50IHVudGlsIHRoZSB0ZW1wZXJhdHVy
ZSBkZWNyZWFzZS4KClRoaXMgcGF0Y2ggZGV0ZWN0cyB0aGUgd2FybmluZ3MgcmFpc2VkIGJ5IHRo
ZSBkZXZpY2UgYW5kIHN0b3AgdGhlCnRyYWZmaWMgYWNjb3JkaW5nbHkuIEl0IGFsc28gYWRkIGEg
ZGVsYXllZCB0YXNrIGFzIHNhZmVndWFyZCBpbiBjYXNlIHRoZQpjaGlwIHdvdWxkIG5ldmVyIHNl
bmQgdGhlIGluZGljYXRpb24gdGhhdCB0aGUgdGVtcGVyYXR1cmUgZGVjcmVhc2UuCgpTaWduZWQt
b2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0t
LQogZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcnguYyB8IDIwICsrKysrKysrKysrKysrLS0tLS0t
CiBkcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYyAgIHwgIDIgKysKIGRyaXZlcnMvc3RhZ2luZy93
Zngvc3RhLmMgICAgfCAyMyArKysrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9zdGFnaW5n
L3dmeC9zdGEuaCAgICB8ICAyICsrCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oICAgIHwgIDEg
KwogNSBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmMgYi9kcml2ZXJzL3N0YWdpbmcv
d2Z4L2hpZl9yeC5jCmluZGV4IGEyYWM2YzA5ODE2My4uNmRlMjEwMTM5ZDhhIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9yeC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngv
aGlmX3J4LmMKQEAgLTIzNSwxMiArMjM1LDIwIEBAIHN0YXRpYyBpbnQgaGlmX3N1c3BlbmRfcmVz
dW1lX2luZGljYXRpb24oc3RydWN0IHdmeF9kZXYgKndkZXYsCiAJc3RydWN0IHdmeF92aWYgKnd2
aWYgPSB3ZGV2X3RvX3d2aWYod2RldiwgaGlmLT5pbnRlcmZhY2UpOwogCWNvbnN0IHN0cnVjdCBo
aWZfaW5kX3N1c3BlbmRfcmVzdW1lX3R4ICpib2R5ID0gYnVmOwogCi0JV0FSTl9PTighd3ZpZik7
Ci0JV0FSTighYm9keS0+c3VzcGVuZF9yZXN1bWVfZmxhZ3MuYmNfbWNfb25seSwgInVuc3VwcG9y
dGVkIHN1c3BlbmQvcmVzdW1lIG5vdGlmaWNhdGlvbiIpOwotCWlmIChib2R5LT5zdXNwZW5kX3Jl
c3VtZV9mbGFncy5yZXN1bWUpCi0JCXdmeF9zdXNwZW5kX3Jlc3VtZV9tYyh3dmlmLCBTVEFfTk9U
SUZZX0FXQUtFKTsKLQllbHNlCi0JCXdmeF9zdXNwZW5kX3Jlc3VtZV9tYyh3dmlmLCBTVEFfTk9U
SUZZX1NMRUVQKTsKKwlpZiAoYm9keS0+c3VzcGVuZF9yZXN1bWVfZmxhZ3MuYmNfbWNfb25seSkg
eworCQlXQVJOX09OKCF3dmlmKTsKKwkJaWYgKGJvZHktPnN1c3BlbmRfcmVzdW1lX2ZsYWdzLnJl
c3VtZSkKKwkJCXdmeF9zdXNwZW5kX3Jlc3VtZV9tYyh3dmlmLCBTVEFfTk9USUZZX0FXQUtFKTsK
KwkJZWxzZQorCQkJd2Z4X3N1c3BlbmRfcmVzdW1lX21jKHd2aWYsIFNUQV9OT1RJRllfU0xFRVAp
OworCX0gZWxzZSB7CisJCVdBUk4oYm9keS0+cGVlcl9zdGFfc2V0LCAibWlzdW5kZXJzdG9vZCBp
bmRpY2F0aW9uIik7CisJCVdBUk4oaGlmLT5pbnRlcmZhY2UgIT0gMiwgIm1pc3VuZGVyc3Rvb2Qg
aW5kaWNhdGlvbiIpOworCQlpZiAoYm9keS0+c3VzcGVuZF9yZXN1bWVfZmxhZ3MucmVzdW1lKQor
CQkJd2Z4X3N1c3BlbmRfaG90X2Rldih3ZGV2LCBTVEFfTk9USUZZX0FXQUtFKTsKKwkJZWxzZQor
CQkJd2Z4X3N1c3BlbmRfaG90X2Rldih3ZGV2LCBTVEFfTk9USUZZX1NMRUVQKTsKKwl9CiAKIAly
ZXR1cm4gMDsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jIGIvZHJp
dmVycy9zdGFnaW5nL3dmeC9tYWluLmMKaW5kZXggY2M3ZjkyNGYzMTA2Li4xMDkzNTg0MzczYWQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jCisrKyBiL2RyaXZlcnMvc3Rh
Z2luZy93ZngvbWFpbi5jCkBAIC0zNDEsNiArMzQxLDggQEAgc3RydWN0IHdmeF9kZXYgKndmeF9p
bml0X2NvbW1vbihzdHJ1Y3QgZGV2aWNlICpkZXYsCiAJbXV0ZXhfaW5pdCgmd2Rldi0+Y29uZl9t
dXRleCk7CiAJbXV0ZXhfaW5pdCgmd2Rldi0+cnhfc3RhdHNfbG9jayk7CiAJaW5pdF9jb21wbGV0
aW9uKCZ3ZGV2LT5maXJtd2FyZV9yZWFkeSk7CisJSU5JVF9ERUxBWUVEX1dPUksoJndkZXYtPmNv
b2xpbmdfdGltZW91dF93b3JrLAorCQkJICB3ZnhfY29vbGluZ190aW1lb3V0X3dvcmspOwogCXdm
eF9pbml0X2hpZl9jbWQoJndkZXYtPmhpZl9jbWQpOwogCXdmeF90eF9xdWV1ZXNfaW5pdCh3ZGV2
KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYyBiL2RyaXZlcnMvc3Rh
Z2luZy93Zngvc3RhLmMKaW5kZXggNTEzMmMxOWUwMzY3Li42N2ViNGE2ZTE3NmIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9z
dGEuYwpAQCAtMzgsNiArMzgsMjkgQEAgdTMyIHdmeF9yYXRlX21hc2tfdG9faHcoc3RydWN0IHdm
eF9kZXYgKndkZXYsIHUzMiByYXRlcykKIAlyZXR1cm4gcmV0OwogfQogCit2b2lkIHdmeF9jb29s
aW5nX3RpbWVvdXRfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCit7CisJc3RydWN0IHdm
eF9kZXYgKndkZXYgPSBjb250YWluZXJfb2YodG9fZGVsYXllZF93b3JrKHdvcmspLAorCQkJCQkg
ICAgc3RydWN0IHdmeF9kZXYsCisJCQkJCSAgICBjb29saW5nX3RpbWVvdXRfd29yayk7CisKKwl3
ZGV2LT5jaGlwX2Zyb3plbiA9IHRydWU7CisJd2Z4X3R4X3VubG9jayh3ZGV2KTsKK30KKwordm9p
ZCB3Znhfc3VzcGVuZF9ob3RfZGV2KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBlbnVtIHN0YV9ub3Rp
ZnlfY21kIGNtZCkKK3sKKwlpZiAoY21kID09IFNUQV9OT1RJRllfQVdBS0UpIHsKKwkJLy8gRGV2
aWNlIHJlY292ZXIgbm9ybWFsIHRlbXBlcmF0dXJlCisJCWlmIChjYW5jZWxfZGVsYXllZF93b3Jr
KCZ3ZGV2LT5jb29saW5nX3RpbWVvdXRfd29yaykpCisJCQl3ZnhfdHhfdW5sb2NrKHdkZXYpOwor
CX0gZWxzZSB7CisJCS8vIERldmljZSBpcyB0b28gaG90CisJCXNjaGVkdWxlX2RlbGF5ZWRfd29y
aygmd2Rldi0+Y29vbGluZ190aW1lb3V0X3dvcmssIDEwICogSFopOworCQl3ZnhfdHhfbG9jayh3
ZGV2KTsKKwl9Cit9CisKIHN0YXRpYyB2b2lkIHdmeF9maWx0ZXJfYmVhY29uKHN0cnVjdCB3Znhf
dmlmICp3dmlmLCBib29sIGZpbHRlcl9iZWFjb24pCiB7CiAJY29uc3Qgc3RydWN0IGhpZl9pZV90
YWJsZV9lbnRyeSBmaWx0ZXJfaWVzW10gPSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
d2Z4L3N0YS5oIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuaAppbmRleCBlODE0ZmU3NDNiN2Qu
LmY3ZTg3NmQxYjAzMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuaAorKysg
Yi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5oCkBAIC02Nyw2ICs2Nyw4IEBAIHZvaWQgd2Z4X3Vu
YXNzaWduX3ZpZl9jaGFuY3R4KHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAogCQkJICAgICAgc3Ry
dWN0IGllZWU4MDIxMV9jaGFuY3R4X2NvbmYgKmNvbmYpOwogCiAvLyBXU00gQ2FsbGJhY2tzCit2
b2lkIHdmeF9jb29saW5nX3RpbWVvdXRfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspOwor
dm9pZCB3Znhfc3VzcGVuZF9ob3RfZGV2KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBlbnVtIHN0YV9u
b3RpZnlfY21kIGNtZCk7CiB2b2lkIHdmeF9zdXNwZW5kX3Jlc3VtZV9tYyhzdHJ1Y3Qgd2Z4X3Zp
ZiAqd3ZpZiwgZW51bSBzdGFfbm90aWZ5X2NtZCBjbWQpOwogdm9pZCB3ZnhfZXZlbnRfcmVwb3J0
X3Jzc2koc3RydWN0IHdmeF92aWYgKnd2aWYsIHU4IHJhd19yY3BpX3Jzc2kpOwogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oIGIvZHJpdmVycy9zdGFnaW5nL3dmeC93Zngu
aAppbmRleCBjN2E1OGFiM2JlYWEuLjA5YmJiNWRhNGYwNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9z
dGFnaW5nL3dmeC93ZnguaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oCkBAIC00NSw2
ICs0NSw3IEBAIHN0cnVjdCB3ZnhfZGV2IHsKIAlzdHJ1Y3QgaGlmX2luZF9zdGFydHVwCWh3X2Nh
cHM7CiAJc3RydWN0IHdmeF9oaWYJCWhpZjsKIAlzdHJ1Y3Qgc2xfY29udGV4dAlzbDsKKwlzdHJ1
Y3QgZGVsYXllZF93b3JrCWNvb2xpbmdfdGltZW91dF93b3JrOwogCWJvb2wJCQljaGlwX2Zyb3pl
bjsKIAlzdHJ1Y3QgbXV0ZXgJCWNvbmZfbXV0ZXg7CiAKLS0gCjIuMjYuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
