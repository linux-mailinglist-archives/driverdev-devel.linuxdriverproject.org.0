Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0599411986
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Sep 2021 18:16:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56AC860AE8;
	Mon, 20 Sep 2021 16:16:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RTgcXyGw0vMI; Mon, 20 Sep 2021 16:16:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58A2C60AD0;
	Mon, 20 Sep 2021 16:16:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D3BBD1BF3D5
 for <devel@linuxdriverproject.org>; Mon, 20 Sep 2021 16:12:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C31A840452
 for <devel@linuxdriverproject.org>; Mon, 20 Sep 2021 16:12:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ipPkyotQ-vya for <devel@linuxdriverproject.org>;
 Mon, 20 Sep 2021 16:12:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2076.outbound.protection.outlook.com [40.107.92.76])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E300C4030D
 for <devel@driverdev.osuosl.org>; Mon, 20 Sep 2021 16:12:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OcNpPUasR156CwNhHb92+ZV5i+WO5bFIWzlbpZ4mLT+kuPbGMboQSlPT4AblMfSqahTtXlGmvCAXkuPZE4HEWOwjHVEBVMrHV7TKNkLH2+MdXrapt+pLZ3wvi/SEY9gkClPtg3R62/O3Q9xxFBmQMMxcTrtgBnwI+9ldhruKkmBX3hs8sc2cQuWdI5NWG0gVJq2jivty4Vb1vgWyzc3pTPyjMMvbSBboZmq8qmjtrXb4YhLxQCWT+3hkL/aPc2WexcyxxKmo4TqmFaIEj2MmIA2R+zTiiLjuvYNq9MHY+Sb7r03d0/io1gJnE67ojWap7J32KLFY2qyCJVK+1vB7GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=dEk3+qj4e1ksJvrrPFbprdR/znDZKjI5IcYfuaq0J5c=;
 b=dzrV5Zm7UVVLVlDa+iGcf/unJ+JX7BsixASfmHs26dvVWRjqCCxWAZ3RdGkwmcJQia9uHg3Nrn2a68xGg0HETVMtvPfibQKPGwxrYKNgmanSLgklAUo/vvsdaRuNz5LM8Jn8AjUOPOTdlNCCZz8grTrDczqV8jZuKalh1A5h4HZ3L/MQjwtk32/8SAQjIkDXAgFURq3sMJtuq8Bv5X7jMTgYLxddZn/EWNpGsVZE5PTxo6L4Iy5GwasT2S78iZLg+82HstgMvZrCWOr3nj3NK/0Gu4qiPB8jZBu/0Y4Poe0u+WSlP72zYZ6N3E9SLifzn2l9H6S2nHq7RsdRaqswgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dEk3+qj4e1ksJvrrPFbprdR/znDZKjI5IcYfuaq0J5c=;
 b=BO294GIqUn4AgVhyp54eq9tcV3+a+Vaonv+yhiDZTnC92uI+FCvXL0XjurehuiMpUxfRcxfhgqMyc/Vlw8FDO0XZ5agd0YUczedBELarwOA6FCt81yDcMkoBQqeGSA5pHmpzMxjgNjJrJ9xvKp1HQi1WuYLyukR/YDWeRMOftqs=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB3168.namprd11.prod.outlook.com (2603:10b6:805:c4::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.18; Mon, 20 Sep
 2021 16:12:43 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4523.018; Mon, 20 Sep 2021
 16:12:43 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v7 20/24] wfx: add scan.c/scan.h
Date: Mon, 20 Sep 2021 18:11:32 +0200
Message-Id: <20210920161136.2398632-21-Jerome.Pouiller@silabs.com>
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
 15.20.4523.14 via Frontend Transport; Mon, 20 Sep 2021 16:12:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3306306-46db-43cd-580b-08d97c517a02
X-MS-TrafficTypeDiagnostic: SN6PR11MB3168:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB31681669931749F4D9F48AE093A09@SN6PR11MB3168.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: edrMjC4vnRzxV1bWX7pWWyZimy6A7FTVqdiUD5rVAmw/utAnaqYNSnUiu1532Kh/6sk9eQ40dPDya+VN3e1ebQ4/tHs+2mO/cT7jfNrRWexl1TotTaowglbD+HoasvtQoxStOaKUnVlEscGKnIdy3Z2rsSs7YOQptOY2q/d9mvxrt7D1k8zxvu2Ge8RrK9UkgPLgIZmWMMBZmOEJfeoB4urL4sJn5/lKIEvUemjF8les9ae/gCrvsAgfN1pT7IgnGvs55PfYPxT3hSn8JZ3NDsBVaS5ffY+O4AYt8656K5sR/DzH3NdG2rIuAEPOJ9cjBOcY1zP18ete+BEqIDhOGUKHrdak0nAF+Ob8mU+pMZt3SihGvY60h7Z7kYAY4iHgZLKD+rhjmXLzal2jV2qHBBSUUgW3bgiyA5I6pDi+bceA8Sa3GpUI0i7Xwuy6zuOxtv0pC255Lo0H7Tqpv7+V/G4GEVbZO78d53XdggKVW2HmjbQJM0+e3aquNq4V3U74tNDHOKUo/6AJVKjkpX40ejUh1YNRpDeKvViThvZJLgfoYiNGKIXVabnmWCy2y24THp3GvQ/8w/3LvhvQgRi2QJmVQxmwwnbD2bPx9Ytri74Qt0I7+bh+zxIfWsVDWxDEPVkQmJJZhxgoa6yR90+izw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(86362001)(1076003)(6666004)(54906003)(5660300002)(8676002)(6916009)(2906002)(38100700002)(8936002)(107886003)(52116002)(186003)(66946007)(66574015)(6486002)(66476007)(4326008)(36756003)(2616005)(508600001)(7416002)(66556008)(7696005)(316002)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: U+hvs9mVjQ1Ay4MEv+Io3REZh3h36j1kTagj5HdrLpfn+p+GRoYSgeT66Htflx6RzxJydYbgscb7njaLjHo6B25RreRLk6ao61m2axo8xgPiCz0mz0TTXDRdOBG3WiwsL0be260KUlIVJPKGsyyldpPeNMAk14i5+N+KGT0ylOzO28g3ppeFrgNT3yQBDrYQ9ayfEhkZBPm0bLoZBtdnJeOLQX4AyCOz6+z6q1N19GkLgru14IE51rrSj7286pM6A5wtfrUiYKQST5lEebUXcgA0sEVvSDhYhNIGdN+gEl1z85DOcpTRVyeAsKWKf1DaOuWjlBrf/8A/9eiqCBlM+sGdcrIlZ2+VV27rgfXtzAWYd/0Hl+iRvZd72IvTlvKu6uOphQ0NdhYEXXgU6Ji5B7yqidXk4nxDXBaM4ezpkEzywu3M8BtwA1MRcprNR5StlSa4WK61Klxpc1e4KZXbcZS3xJ8azBVn3RW/SPO7oHd7GOAc+QZyP2ptAlSNkfxs1kaDj7+f0rnbey97+P+yIi0pkWdPf9/RPXgkKoZCB3QoEKG2VSp89flcqRLudZ+UpOVqNt0GF9SR5PxRAaRpv6LhyNtDDXJTlD865ytNh/UBQzyoC+9YRhyL8SjDGVZBHkLwpzkEhZ6ivJ8kAwcBlxHLTrZYRRDTteA0OzHqEvEzD0phGxvviEMiKBkJgi6U704z6KU5iW2886xYnverrf5xdC3JLPUp8cPlyYAHgNJimm+NX4jWwIyp9S/l7F+1yuN7ZiJPgMGbiFO27B1DaB+zNQKthm5fubzJoX8q4QOEt7LQz0bzVsmGJLTzh6tQ
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3306306-46db-43cd-580b-08d97c517a02
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2021 16:12:43.2963 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CmLEXrQVDVvu/ldAC/d+3RAhaIL1CBTNn2p6kUejebhb+zipCs+R9GuXPLfRuy+hVbouuGYrefyEzHiGJXzUMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3168
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU2ln
bmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29t
PgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngvc2Nhbi5jIHwgMTQ4ICsrKysr
KysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngvc2Nh
bi5oIHwgIDIyICsrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTcwIGluc2VydGlvbnMoKykKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L3NjYW4uYwogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngvc2Nhbi5oCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9zY2FuLmMgYi9kcml2
ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L3NjYW4uYwpuZXcgZmlsZSBtb2RlIDEwMDY0NApp
bmRleCAwMDAwMDAwMDAwMDAuLjBjYzk3ZGZhYzUyNgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZl
cnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngvc2Nhbi5jCkBAIC0wLDAgKzEsMTQ4IEBACisvLyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CisvKgorICogU2NhbiByZWxhdGVk
IGZ1bmN0aW9ucy4KKyAqCisgKiBDb3B5cmlnaHQgKGMpIDIwMTctMjAyMCwgU2lsaWNvbiBMYWJv
cmF0b3JpZXMsIEluYy4KKyAqIENvcHlyaWdodCAoYykgMjAxMCwgU1QtRXJpY3Nzb24KKyAqLwor
I2luY2x1ZGUgPG5ldC9tYWM4MDIxMS5oPgorCisjaW5jbHVkZSAic2Nhbi5oIgorI2luY2x1ZGUg
IndmeC5oIgorI2luY2x1ZGUgInN0YS5oIgorI2luY2x1ZGUgImhpZl90eF9taWIuaCIKKworc3Rh
dGljIHZvaWQgX19pZWVlODAyMTFfc2Nhbl9jb21wbGV0ZWRfY29tcGF0KHN0cnVjdCBpZWVlODAy
MTFfaHcgKmh3LAorCQkJCQkgICAgICBib29sIGFib3J0ZWQpCit7CisJc3RydWN0IGNmZzgwMjEx
X3NjYW5faW5mbyBpbmZvID0geworCQkuYWJvcnRlZCA9IGFib3J0ZWQsCisJfTsKKworCWllZWU4
MDIxMV9zY2FuX2NvbXBsZXRlZChodywgJmluZm8pOworfQorCitzdGF0aWMgaW50IHVwZGF0ZV9w
cm9iZV90bXBsKHN0cnVjdCB3ZnhfdmlmICp3dmlmLAorCQkJICAgICBzdHJ1Y3QgY2ZnODAyMTFf
c2Nhbl9yZXF1ZXN0ICpyZXEpCit7CisJc3RydWN0IHNrX2J1ZmYgKnNrYjsKKworCXNrYiA9IGll
ZWU4MDIxMV9wcm9iZXJlcV9nZXQod3ZpZi0+d2Rldi0+aHcsIHd2aWYtPnZpZi0+YWRkciwKKwkJ
CQkgICAgIE5VTEwsIDAsIHJlcS0+aWVfbGVuKTsKKwlpZiAoIXNrYikKKwkJcmV0dXJuIC1FTk9N
RU07CisKKwlza2JfcHV0X2RhdGEoc2tiLCByZXEtPmllLCByZXEtPmllX2xlbik7CisJaGlmX3Nl
dF90ZW1wbGF0ZV9mcmFtZSh3dmlmLCBza2IsIEhJRl9UTVBMVF9QUkJSRVEsIDApOworCWRldl9r
ZnJlZV9za2Ioc2tiKTsKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBzZW5kX3NjYW5fcmVx
KHN0cnVjdCB3ZnhfdmlmICp3dmlmLAorCQkJIHN0cnVjdCBjZmc4MDIxMV9zY2FuX3JlcXVlc3Qg
KnJlcSwgaW50IHN0YXJ0X2lkeCkKK3sKKwlpbnQgaSwgcmV0OworCXN0cnVjdCBpZWVlODAyMTFf
Y2hhbm5lbCAqY2hfc3RhcnQsICpjaF9jdXI7CisKKwlmb3IgKGkgPSBzdGFydF9pZHg7IGkgPCBy
ZXEtPm5fY2hhbm5lbHM7IGkrKykgeworCQljaF9zdGFydCA9IHJlcS0+Y2hhbm5lbHNbc3RhcnRf
aWR4XTsKKwkJY2hfY3VyID0gcmVxLT5jaGFubmVsc1tpXTsKKwkJV0FSTihjaF9jdXItPmJhbmQg
IT0gTkw4MDIxMV9CQU5EXzJHSFosICJiYW5kIG5vdCBzdXBwb3J0ZWQiKTsKKwkJaWYgKGNoX2N1
ci0+bWF4X3Bvd2VyICE9IGNoX3N0YXJ0LT5tYXhfcG93ZXIpCisJCQlicmVhazsKKwkJaWYgKChj
aF9jdXItPmZsYWdzIF4gY2hfc3RhcnQtPmZsYWdzKSAmIElFRUU4MDIxMV9DSEFOX05PX0lSKQor
CQkJYnJlYWs7CisJfQorCXdmeF90eF9sb2NrX2ZsdXNoKHd2aWYtPndkZXYpOworCXd2aWYtPnNj
YW5fYWJvcnQgPSBmYWxzZTsKKwlyZWluaXRfY29tcGxldGlvbigmd3ZpZi0+c2Nhbl9jb21wbGV0
ZSk7CisJcmV0ID0gaGlmX3NjYW4od3ZpZiwgcmVxLCBzdGFydF9pZHgsIGkgLSBzdGFydF9pZHgp
OworCWlmIChyZXQpIHsKKwkJd2Z4X3R4X3VubG9jayh3dmlmLT53ZGV2KTsKKwkJcmV0dXJuIC1F
SU87CisJfQorCXJldCA9IHdhaXRfZm9yX2NvbXBsZXRpb25fdGltZW91dCgmd3ZpZi0+c2Nhbl9j
b21wbGV0ZSwgMSAqIEhaKTsKKwlpZiAoIXJldCkgeworCQloaWZfc3RvcF9zY2FuKHd2aWYpOwor
CQlyZXQgPSB3YWl0X2Zvcl9jb21wbGV0aW9uX3RpbWVvdXQoJnd2aWYtPnNjYW5fY29tcGxldGUs
IDEgKiBIWik7CisJCWRldl9kYmcod3ZpZi0+d2Rldi0+ZGV2LCAic2NhbiB0aW1lb3V0ICglZCBj
aGFubmVscyBkb25lKVxuIiwKKwkJCXd2aWYtPnNjYW5fbmJfY2hhbl9kb25lKTsKKwl9CisJaWYg
KCFyZXQpIHsKKwkJZGV2X2Vycih3dmlmLT53ZGV2LT5kZXYsICJzY2FuIGRpZG4ndCBzdG9wXG4i
KTsKKwkJcmV0ID0gLUVUSU1FRE9VVDsKKwl9IGVsc2UgaWYgKHd2aWYtPnNjYW5fYWJvcnQpIHsK
KwkJZGV2X25vdGljZSh3dmlmLT53ZGV2LT5kZXYsICJzY2FuIGFib3J0XG4iKTsKKwkJcmV0ID0g
LUVDT05OQUJPUlRFRDsKKwl9IGVsc2UgaWYgKHd2aWYtPnNjYW5fbmJfY2hhbl9kb25lID4gaSAt
IHN0YXJ0X2lkeCkgeworCQlyZXQgPSAtRUlPOworCX0gZWxzZSB7CisJCXJldCA9IHd2aWYtPnNj
YW5fbmJfY2hhbl9kb25lOworCX0KKwlpZiAocmVxLT5jaGFubmVsc1tzdGFydF9pZHhdLT5tYXhf
cG93ZXIgIT0gd3ZpZi0+dmlmLT5ic3NfY29uZi50eHBvd2VyKQorCQloaWZfc2V0X291dHB1dF9w
b3dlcih3dmlmLCB3dmlmLT52aWYtPmJzc19jb25mLnR4cG93ZXIpOworCXdmeF90eF91bmxvY2so
d3ZpZi0+d2Rldik7CisJcmV0dXJuIHJldDsKK30KKworLyogSXQgaXMgbm90IHJlYWxseSBuZWNl
c3NhcnkgdG8gcnVuIHNjYW4gcmVxdWVzdCBhc3luY2hyb25vdXNseS4gSG93ZXZlciwKKyAqIHRo
ZXJlIGlzIGEgYnVnIGluICJpdyBzY2FuIiB3aGVuIGllZWU4MDIxMV9zY2FuX2NvbXBsZXRlZCgp
IGlzIGNhbGxlZCBiZWZvcmUKKyAqIHdmeF9od19zY2FuKCkgcmV0dXJuCisgKi8KK3ZvaWQgd2Z4
X2h3X3NjYW5fd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCit7CisJc3RydWN0IHdmeF92
aWYgKnd2aWYgPSBjb250YWluZXJfb2Yod29yaywgc3RydWN0IHdmeF92aWYsIHNjYW5fd29yayk7
CisJc3RydWN0IGllZWU4MDIxMV9zY2FuX3JlcXVlc3QgKmh3X3JlcSA9IHd2aWYtPnNjYW5fcmVx
OworCWludCBjaGFuX2N1ciwgcmV0LCBlcnI7CisKKwltdXRleF9sb2NrKCZ3dmlmLT53ZGV2LT5j
b25mX211dGV4KTsKKwltdXRleF9sb2NrKCZ3dmlmLT5zY2FuX2xvY2spOworCWlmICh3dmlmLT5q
b2luX2luX3Byb2dyZXNzKSB7CisJCWRldl9pbmZvKHd2aWYtPndkZXYtPmRldiwgImFib3J0IGlu
LXByb2dyZXNzIFJFUV9KT0lOIik7CisJCXdmeF9yZXNldCh3dmlmKTsKKwl9CisJdXBkYXRlX3By
b2JlX3RtcGwod3ZpZiwgJmh3X3JlcS0+cmVxKTsKKwljaGFuX2N1ciA9IDA7CisJZXJyID0gMDsK
KwlkbyB7CisJCXJldCA9IHNlbmRfc2Nhbl9yZXEod3ZpZiwgJmh3X3JlcS0+cmVxLCBjaGFuX2N1
cik7CisJCWlmIChyZXQgPiAwKSB7CisJCQljaGFuX2N1ciArPSByZXQ7CisJCQllcnIgPSAwOwor
CQl9CisJCWlmICghcmV0KQorCQkJZXJyKys7CisJCWlmIChlcnIgPiAyKSB7CisJCQlkZXZfZXJy
KHd2aWYtPndkZXYtPmRldiwgInNjYW4gaGFzIG5vdCBiZWVuIGFibGUgdG8gc3RhcnRcbiIpOwor
CQkJcmV0ID0gLUVUSU1FRE9VVDsKKwkJfQorCX0gd2hpbGUgKHJldCA+PSAwICYmIGNoYW5fY3Vy
IDwgaHdfcmVxLT5yZXEubl9jaGFubmVscyk7CisJbXV0ZXhfdW5sb2NrKCZ3dmlmLT5zY2FuX2xv
Y2spOworCW11dGV4X3VubG9jaygmd3ZpZi0+d2Rldi0+Y29uZl9tdXRleCk7CisJX19pZWVlODAy
MTFfc2Nhbl9jb21wbGV0ZWRfY29tcGF0KHd2aWYtPndkZXYtPmh3LCByZXQgPCAwKTsKK30KKwor
aW50IHdmeF9od19zY2FuKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjEx
X3ZpZiAqdmlmLAorCQlzdHJ1Y3QgaWVlZTgwMjExX3NjYW5fcmVxdWVzdCAqaHdfcmVxKQorewor
CXN0cnVjdCB3ZnhfdmlmICp3dmlmID0gKHN0cnVjdCB3ZnhfdmlmICopdmlmLT5kcnZfcHJpdjsK
KworCVdBUk5fT04oaHdfcmVxLT5yZXEubl9jaGFubmVscyA+IEhJRl9BUElfTUFYX05CX0NIQU5O
RUxTKTsKKwl3dmlmLT5zY2FuX3JlcSA9IGh3X3JlcTsKKwlzY2hlZHVsZV93b3JrKCZ3dmlmLT5z
Y2FuX3dvcmspOworCXJldHVybiAwOworfQorCit2b2lkIHdmeF9jYW5jZWxfaHdfc2NhbihzdHJ1
Y3QgaWVlZTgwMjExX2h3ICpodywgc3RydWN0IGllZWU4MDIxMV92aWYgKnZpZikKK3sKKwlzdHJ1
Y3Qgd2Z4X3ZpZiAqd3ZpZiA9IChzdHJ1Y3Qgd2Z4X3ZpZiAqKXZpZi0+ZHJ2X3ByaXY7CisKKwl3
dmlmLT5zY2FuX2Fib3J0ID0gdHJ1ZTsKKwloaWZfc3RvcF9zY2FuKHd2aWYpOworfQorCit2b2lk
IHdmeF9zY2FuX2NvbXBsZXRlKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBpbnQgbmJfY2hhbl9kb25l
KQoreworCXd2aWYtPnNjYW5fbmJfY2hhbl9kb25lID0gbmJfY2hhbl9kb25lOworCWNvbXBsZXRl
KCZ3dmlmLT5zY2FuX2NvbXBsZXRlKTsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVs
ZXNzL3NpbGFicy93Zngvc2Nhbi5oIGIvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9z
Y2FuLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi43OGUzYjk4NGYz
NzUKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L3Nj
YW4uaApAQCAtMCwwICsxLDIyIEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MC1vbmx5ICovCisvKgorICogU2NhbiByZWxhdGVkIGZ1bmN0aW9ucy4KKyAqCisgKiBDb3B5cmln
aHQgKGMpIDIwMTctMjAyMCwgU2lsaWNvbiBMYWJvcmF0b3JpZXMsIEluYy4KKyAqIENvcHlyaWdo
dCAoYykgMjAxMCwgU1QtRXJpY3Nzb24KKyAqLworI2lmbmRlZiBXRlhfU0NBTl9ICisjZGVmaW5l
IFdGWF9TQ0FOX0gKKworI2luY2x1ZGUgPG5ldC9tYWM4MDIxMS5oPgorCitzdHJ1Y3Qgd2Z4X2Rl
djsKK3N0cnVjdCB3ZnhfdmlmOworCit2b2lkIHdmeF9od19zY2FuX3dvcmsoc3RydWN0IHdvcmtf
c3RydWN0ICp3b3JrKTsKK2ludCB3ZnhfaHdfc2NhbihzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywg
c3RydWN0IGllZWU4MDIxMV92aWYgKnZpZiwKKwkJc3RydWN0IGllZWU4MDIxMV9zY2FuX3JlcXVl
c3QgKnJlcSk7Cit2b2lkIHdmeF9jYW5jZWxfaHdfc2NhbihzdHJ1Y3QgaWVlZTgwMjExX2h3ICpo
dywgc3RydWN0IGllZWU4MDIxMV92aWYgKnZpZik7Cit2b2lkIHdmeF9zY2FuX2NvbXBsZXRlKHN0
cnVjdCB3ZnhfdmlmICp3dmlmLCBpbnQgbmJfY2hhbl9kb25lKTsKKworI2VuZGlmCi0tIAoyLjMz
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
