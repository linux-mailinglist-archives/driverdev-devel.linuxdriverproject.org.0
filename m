Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 503E04086BA
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Sep 2021 10:33:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5FEC401EF;
	Mon, 13 Sep 2021 08:33:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ek7N2HqDa0tF; Mon, 13 Sep 2021 08:33:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C74AF400FC;
	Mon, 13 Sep 2021 08:33:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7042A1BF389
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 08:31:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F50C605E4
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 08:31:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W7-sQDJnnenj for <devel@linuxdriverproject.org>;
 Mon, 13 Sep 2021 08:31:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on20607.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe59::607])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA0A2605D8
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 08:31:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NwvLRTpwsdaz699K95tFlYPtOh4pDTaTgtn+AjkUGdLMlp5R6yjU31x/PMYKfBJH0JAz6nMTCR+8PrNuWzGyv2nfKRKNYX6Rt0OnYSGmutNNXgdarjM6BvwJ3bgHptY2vOW6OdAaWivSV1RBXsSBfx659XvlI4dsFgLDs9WryaLJThxRv6MuHobJvkLl1OB72AMOIQ8G5veZb728BSY7kbCnHZZ17Jnd3ErS3TnTA4EqrfGcB18rAsTDDOnQvOaNBHvrcfxu6qExGCPynloxLmjBxJIXhPwHxF3rFxkF0sRHomOQ0VDa420dD3SofQtxQb2S29rGL1BKMthfvHip3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=Jgm7gufk4MiTW/E5bnLdLTFb9rL4DssoymnMgDzNeZw=;
 b=eepPism/nItXBy/U//Hexet9/at+PVTNJbpv/UVfKSHtJkyHdPFZxqUbf54cJBr7ik8M2AhIJuWYaHzDopjExZMJR+VbwBYPBtK0V/YZwzj1toiefDxpdGMEfd53kSK6gInNjkVrMM1MlhAULYEF8vUCKswSwIxao4GCx+MdTk/s5+0vUWC81fwdsxhq1DzIgPpBHI+1YFmqj5o4ke+bQ4rlkegV9fPasQm6UGwLPyzkD+muf4hmy8iyQ9SHksvfSo5Wu4yMMxami0tPLZK41YZtNkHxUfJtk/FApvltv3bFTa5BO5CQmiIyu2Q1aD+6HYUV5pznXNhZQsdvQS/9DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jgm7gufk4MiTW/E5bnLdLTFb9rL4DssoymnMgDzNeZw=;
 b=DbSe4pEtG0VzbCm1eShWjwPZEE/k8KVEMpQpVVDTnRAlHmbIJJD/qJMRUgtlurOmWf/V9lROQ5W870+3o5HJ6iSiEkzftwfWPHPhkmKM5d7jeABn4KYUeI4FgXwWzDrbU7xUKEFUPEIaPU3TM3xG0sXJICXsBPk5henfT+TNTfE=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (52.135.97.18) by
 SN6PR11MB3263.namprd11.prod.outlook.com (52.135.109.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.18; Mon, 13 Sep 2021 08:31:48 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Mon, 13 Sep 2021
 08:31:48 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH v2 09/33] staging: wfx: declare support for TDLS
Date: Mon, 13 Sep 2021 10:30:21 +0200
Message-Id: <20210913083045.1881321-10-Jerome.Pouiller@silabs.com>
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
 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 08:31:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5f96e9e0-fdcf-42ad-1a19-08d97690dcc9
X-MS-TrafficTypeDiagnostic: SN6PR11MB3263:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB32636F4DC3DBAFAF91406E9193D99@SN6PR11MB3263.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1360;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TC0AKGLsV7CbGnwCjHiGrNOdPXJgyEoVmvb+mvtVj4BQ+njTBb2YiLMCg4iNND/A83LZPylINf+9zKUOveZLFXoz3rrULr8Bs04Gi/sG41h1aSfuWSLkBs64pUfAKhv3JWqHk/GlAg6SeKycSFlANwbknEwznr2Qd7jreB6Jv4xOP1KrEMBLnbY3zbXz7kqBqnkIr6/cpZOt3OJ6u2wR83Z/p3LYMn1T+89RHlqiMJ7CGvlDAagMto2KZkjY6hQY+jfwg7bYivwschWJVzuRvaosJvB2g/H3yVa+el1UNM5OG6EZPqCkGBPlvz8JgZJaoA/jKqtsidIZw5uVyQzOCF38JxGzPsl1GW/QAB90Xk3cOK6U3H+KcO8E5ZnJcwNTgYrKeZjltjqsy3eJ+3lXPs2zPJMYjvHmCfKOUZnG0CBeykU8qQV13J9QOJtOQf3edo585Zzo8roZ73ZAbXEDHkvn5INr4OHC9iYsi1JzU3Bvd8BoCDNgL08xsFV1f+iBXPL6BsM9sgrycGOskSeyhicM5uQq57dCu3zQ657rvBces2Zw/2ReFkU7MB+UXHUJu5CfGkbE0qayAdSjf29orL96WQlsajttJrOl4U82XVb1+s2PuQ4VOUCMZOoghWDh0mhDc5xZRaeUF7pToFqidw5OgyiyRrxKm6oYH7dfVpiPiuEvDqYpVOBlNtF/D2c/0pIPA9rLgBbh2eKhNGiVPQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(107886003)(956004)(2616005)(5660300002)(54906003)(38350700002)(4326008)(6666004)(316002)(38100700002)(66946007)(26005)(66476007)(66556008)(186003)(8676002)(36756003)(8936002)(86362001)(4744005)(508600001)(52116002)(7696005)(6486002)(1076003)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXRKTWRYblJOQ1lRUy9GYlNyaXZxRXIrbGFnTkRrSWxiVCtEbjM5QzBNVEps?=
 =?utf-8?B?S3QxampVTXg0dHJMOWhTeUhKbGhYVzZlVzh6c1Y4NzZpRlE0cTRUOGE0bk1W?=
 =?utf-8?B?Q1d4UFozSmdiWWFwVWxOUnVaV2wvazlWUHA1NGw0RW1idlVNbkY5TXBqbVlW?=
 =?utf-8?B?OURRckozR1Nid2wrdnZJMThhUEVwT3JCR29kSzg5V0JiQTZMQ0pUeHErR0ZP?=
 =?utf-8?B?aE80ZEtHNHpVS0ptYmFiL0ROYzhUQXZ4aEFFeGh3dHovODhWSHA2RytLdDgw?=
 =?utf-8?B?NnhNTnY1a2loZ0djd2FQZFNlTVhLbUZNelQ0WlBtTS83Z2d6cnZWbnR2ZURa?=
 =?utf-8?B?U3ZoVEl4R1ZPV3QxOGkxUGIrMEVIRmdKUithTGFkMU1TdEd6V05sc0E5RFJK?=
 =?utf-8?B?czR2ZTFPUzlOcWV1RzNKZHQvMk5Ndm5BMTI3TSs3REhOYVM2Z0Nnb3RMaks5?=
 =?utf-8?B?Q3d2blhONWcxODJXci9GbHU3ZG1yWDIrNC8wc2d3ajBiSEdHRFlDNjNtRlMv?=
 =?utf-8?B?QXVINnY4UTV4cVRDN0ZBUkR1WTlVUDlCdi82SG12MFVjYXlzVEhUUHV0eGpC?=
 =?utf-8?B?UTFnQkQ4YW9udmpyK1JTTVlJc0VNQXV0S200WjlVUWROYU5pd0VreFE3VGI4?=
 =?utf-8?B?NmdoY3VDTnl1bHJFR0x2elFUYWdveHZKbTljU1pZaVQ1d0wrbzZXellVQlNN?=
 =?utf-8?B?UEpaQkNvQUhyMzR1VjRtRHFLSjRITDAwRUZ1VEFxTTlENnZzck5HYzg3Ri8x?=
 =?utf-8?B?VW1qOG80cVRVS0xESlI5bktodU04cUFsTEFYQ0EwWHpnMmN4eWw0M3JTVmdk?=
 =?utf-8?B?QllLWjFrNzh2dmNEOHliVzBxNG50Ym05bTZGNVNCR1k0Yk9INk1DTVhMaitO?=
 =?utf-8?B?aU9pZ1JIZHU1VjBvc1lkZGdkNFNsWE0zQUQrbVorS2M4eFpKditYaVdHc1BH?=
 =?utf-8?B?NmswZlhGNzVhellTYnAzbG1kVUlSdzVTdzFlMVA3SlRBbmtzRlhJK1loUTcx?=
 =?utf-8?B?eE83cGhSeklMZHVWNUhKd3NnaXFjN0NJS2M4cVlGRTBteDhSOFBkc25kdWIw?=
 =?utf-8?B?ZkdjUE5lUlUzUWlMZExpZnloMlNZMnFQd1RGT0QyWjcvNEZpa2dQV0w5QUFa?=
 =?utf-8?B?MVMySnc5cDhrKzZiQ0k4d2tHTHJpbWloeHJHZ1dqSk5NeFlqMUJnVGttdi9q?=
 =?utf-8?B?eTFoL3dnbG42MnhUdXl4dlRoTDhNL3pGV3FtOU9OMzRmbGtzZERNQ0J1MTFx?=
 =?utf-8?B?K2Z4alJodVZobkZjRDEzcFJDaVlUUzJESjEzbEFuR1ZkM1NnamlTMGo2dHhl?=
 =?utf-8?B?Y1kwcnZJZVpIY2VhaEJtck5wRnoydXFNQWJQdFh4VXRaaEhUOVVGQTlZaXVp?=
 =?utf-8?B?YmMxSC95WmJ1MlFSdjF6OTR0d09BcStBS1lTMkJWbWpOelRVVlVrSnZDaWdI?=
 =?utf-8?B?Q1I0dGc1V3BWVUh0eDQ0cDkyNWtLMEd6WjVoU3gyOFhMWWZoWThManJnZnlM?=
 =?utf-8?B?b0wyWDJNSzcyWllxTy9DRWo5cmhqbzNxTWIrdXR4bU1EUTgvYU4rUzhXM3Fv?=
 =?utf-8?B?c0s2TklpZURRV0s1U2ZJNmhpNFlseFB0K1Evd0lZSXM3bnJ4U2ZCWDdFaHBV?=
 =?utf-8?B?QThjd0NhSnFrYTVVQlB1MWh0T3Vld3VRTlc3NW1ham1XVnF3L0RBNDcxNjhW?=
 =?utf-8?B?b0x5enQzZTZXR2w0Y3k3V3ZkcjQwelU4VVZ5YWhUMTRUR1VOS1E3SC9VQ2I3?=
 =?utf-8?Q?us/GRmz2zwK7/SsnyKBeEcmBubvZAR52fv3OalN?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f96e9e0-fdcf-42ad-1a19-08d97690dcc9
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 08:31:20.3599 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aLgfR1o5jDLqvONGplaM33Aa1AABjX6J7td6cEixvBaKC7xi08kBk98fSqmu2KscChcC8u5q5+UF4oANWKhnTA==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU2lu
Y2UgdGhlIGZpcm13YXJlIEFQSSAzLjgsIHRoZSBkZXZpY2UgaXMgYWJsZSB0byBzdXBwb3J0IFRE
TFMuCgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNp
bGFicy5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMgfCAzICsrKwogMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93
ZngvbWFpbi5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMKaW5kZXggNGI5ZmRmOTk5ODFi
Li4wYTlkMDJkMWFmMmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jCisr
KyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jCkBAIC00NDAsNiArNDQwLDkgQEAgaW50IHdm
eF9wcm9iZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldikKIAl3ZGV2LT5ody0+d2lwaHktPm5fYWRkcmVz
c2VzID0gQVJSQVlfU0laRSh3ZGV2LT5hZGRyZXNzZXMpOwogCXdkZXYtPmh3LT53aXBoeS0+YWRk
cmVzc2VzID0gd2Rldi0+YWRkcmVzc2VzOwogCisJaWYgKCF3ZnhfYXBpX29sZGVyX3RoYW4od2Rl
diwgMywgOCkpCisJCXdkZXYtPmh3LT53aXBoeS0+ZmxhZ3MgfD0gV0lQSFlfRkxBR19TVVBQT1JU
U19URExTOworCiAJZXJyID0gaWVlZTgwMjExX3JlZ2lzdGVyX2h3KHdkZXYtPmh3KTsKIAlpZiAo
ZXJyKQogCQlnb3RvIGVycjE7Ci0tIAoyLjMzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
