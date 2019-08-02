Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A957F548
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 12:44:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 10E5E87C17;
	Fri,  2 Aug 2019 10:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a3qaIFx1d1d9; Fri,  2 Aug 2019 10:44:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA3CD87987;
	Fri,  2 Aug 2019 10:44:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B98271BF356
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 10:44:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B631C20458
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 10:44:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kIrEc4Y8KhO1 for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 10:44:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com
 [148.163.139.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 2910620455
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 10:44:42 +0000 (UTC)
Received: from pps.filterd (m0167090.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x72A2Le6010589; Fri, 2 Aug 2019 06:03:47 -0400
Received: from nam05-by2-obe.outbound.protection.outlook.com
 (mail-by2nam05lp2055.outbound.protection.outlook.com [104.47.50.55])
 by mx0b-00128a01.pphosted.com with ESMTP id 2u4ddxrvrr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 02 Aug 2019 06:03:47 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A732m5YyNFT32VZzkj5QvklZiKtAp+iVAOtLZ6Xtd2hZnsjICA7IlYxJO9GvzaMRQcACgH3zT88gokfNPjbncSLymv998VkKyAUK2OKvLy4cSmFr9Pq29ic670WRv7hbKoiD2oOHdBt03Ne5cLogkhy+ejNAQyIGkHiV1NwZqklLx9qWz30beL91CbzrXIkaEAog2u3RvQd+fHavdCUokAjSfI5hqq77KuYqFz37z65WKvjuqBX8DBFkrUqhBDdWEoyHJ2SAvQAcrjqAHhMDW9BmR3nH3Te0GC7KoytbhT2ZH0Xxy/3q4gLuFy3Zw64F8tRbbuuTKCD+3WJBVYI2IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iEmF0mK+wxOiWYtr2kD77YT9/TZe6zsyYelvmcnLZmw=;
 b=ZQ8O8XPlapeHa9E1rntOIxAWwaCrmA+tnmeb+zFEAOfrDrSNWkfcz8ftyf4wtOfv/yG1ZdPKs3JBivBXxPjWO9dz9anXGNKpCjJGmR+xp77Rhc+cHTcrRuFsXPkBMdz3jhip5AmTc7+mJzvXUwKlleWbYEgJYL/zs+ZJfdt8XyNeUYk2KmfrLX3T5AsAVip23QWqRqKSvbacxlIN6+IRNOfi8tDThG3tDx+sHrGuEd+cuwCglhJHLUuxKyG8w0i/yZYycxXrgQ/OOgXXF4PmeeZu/+kPz9iSKS6i23saytBnTBT21ZTZizhEMCHLQqGgS3kw3+2jrn6WM9NBiovjlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=analog.com;dmarc=bestguesspass action=none
 header.from=analog.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iEmF0mK+wxOiWYtr2kD77YT9/TZe6zsyYelvmcnLZmw=;
 b=wjhxpA5PWGjlTWtr5Iv5aXLX+iuF4s96yWew8JnarKkNmgsp/19cMFti8NTtuU5tiLka5U/EN6BjR0IydvnitkanS2v21Cc0jclWVOK+MiCHQkFsVQpMfBelBpDrxLvJp/ZoV8k5lH4Gm6+x0/D3dkpbnFxQlD7kupJfjUt9FOI=
Received: from BN3PR03CA0109.namprd03.prod.outlook.com (2603:10b6:400:4::27)
 by BYAPR03MB3783.namprd03.prod.outlook.com (2603:10b6:a03:6f::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.17; Fri, 2 Aug
 2019 10:03:45 +0000
Received: from BL2NAM02FT024.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::205) by BN3PR03CA0109.outlook.office365.com
 (2603:10b6:400:4::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.13 via Frontend
 Transport; Fri, 2 Aug 2019 10:03:45 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT024.mail.protection.outlook.com (10.152.77.62) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2136.14
 via Frontend Transport; Fri, 2 Aug 2019 10:03:45 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x72A3i9q025318
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Fri, 2 Aug 2019 03:03:44 -0700
Received: from ben-Latitude-E6540.ad.analog.com (10.48.65.163) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Fri, 2 Aug 2019 06:03:44 -0400
From: Beniamin Bia <beniamin.bia@analog.com>
To: <jic23@kernel.org>
Subject: [PATCH 3/4] dt-bindings: iio: adc: Migrate AD7606 documentation to
 yaml
Date: Fri, 2 Aug 2019 13:03:03 +0300
Message-ID: <20190802100304.15899-3-beniamin.bia@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190802100304.15899-1-beniamin.bia@analog.com>
References: <20190802100304.15899-1-beniamin.bia@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(376002)(396003)(346002)(2980300002)(199004)(189003)(6666004)(356004)(6916009)(107886003)(53376002)(14444005)(966005)(4326008)(2906002)(2870700001)(6306002)(5820100001)(36756003)(7416002)(478600001)(50226002)(1076003)(50466002)(2351001)(7636002)(106002)(305945005)(316002)(246002)(54906003)(5660300002)(70586007)(44832011)(486006)(70206006)(76176011)(23676004)(8676002)(47776003)(11346002)(26005)(126002)(186003)(446003)(7696005)(8936002)(476003)(2616005)(426003)(86362001)(336012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3783; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 589fdbc7-ed29-4246-cea4-08d71730b49b
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BYAPR03MB3783; 
X-MS-TrafficTypeDiagnostic: BYAPR03MB3783:
X-MS-Exchange-PUrlCount: 5
X-Microsoft-Antispam-PRVS: <BYAPR03MB3783248C9961033E184EAB55F0D90@BYAPR03MB3783.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 011787B9DD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 2Nc+Mug6aNM8wdbg1ZStVcXzX6wPivp2F6HBPjHdqGckWQxz9HdGfLhXmnkdg3jvrFmWMxAQD1lWpHC31xGyV6dAPP2293fQ6zj/lu8dZQ2EdiKQfdorvEBtSufcoRMeH+KXxsfI+wgjIpcnW/pdQ/tk4+PAeb9n7m45kyyzd2ardD6EYOyvWr3sJYKRBKfTmbPPWMeofB3d0KvIOdT2c2BD9wI8KXPe/+sq/GKSHj/Ma2ialNg2XzplVyZ5nOTf7LzkmK7tRXuFzExWNyXvFcfgYdEj1j++soqtHtUUG+iqgf0qdlAn/YYeIO8RuXt5il2YLnxyRSL0P/aTxsxbHJyVkRil4GCPkpQPSa7Cz1BGLDwhKjf2Tjbt1cw97gIxSvmnudeO+r4bmeEQRKcjqyNcVaIgnYC5qIfpG1TiPEo=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2019 10:03:45.1242 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 589fdbc7-ed29-4246-cea4-08d71730b49b
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3783
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908020102
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, lars@metafoo.de,
 biabeniamin@outlook.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, mchehab+samsung@kernel.org,
 paulmck@linux.ibm.com, Beniamin Bia <beniamin.bia@analog.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhlIGRvY3VtZW50YXRpb24gZm9yIGFkNzYwNiB3YXMgbWlncmF0ZWQgdG8geWFtbCwgdGhlIG5l
dyBMaW51eCBLZXJuZWwKc3RhbmRhcmQuCgpTaWduZWQtb2ZmLWJ5OiBCZW5pYW1pbiBCaWEgPGJl
bmlhbWluLmJpYUBhbmFsb2cuY29tPgotLS0KIC4uLi9iaW5kaW5ncy9paW8vYWRjL2FkaSxhZDc2
MDYueWFtbCAgICAgICAgICB8IDEzNCArKysrKysrKysrKysrKysrKysKIE1BSU5UQUlORVJTICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQogMiBmaWxlcyBjaGFuZ2Vk
LCAxMzUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9paW8vYWRjL2FkaSxhZDc2MDYueWFtbAoK
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9paW8vYWRjL2Fk
aSxhZDc2MDYueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9paW8vYWRj
L2FkaSxhZDc2MDYueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAu
LjUwOWRiZTljODRkMgotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9paW8vYWRjL2FkaSxhZDc2MDYueWFtbApAQCAtMCwwICsxLDEzNCBAQAorIyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAorJVlBTUwgMS4yCistLS0KKyRpZDogaHR0
cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvaWlvL2FkYy9hZGksYWQ3NjA2LnlhbWwjCiskc2No
ZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0
bGU6IEFuYWxvZyBEZXZpY2VzIEFENzYwNiBTaW11bHRhbmVvdXMgU2FtcGxpbmcgQURDCisKK21h
aW50YWluZXJzOgorICAtIEJlbmlhbWluIEJpYSA8YmVuaWFtaW4uYmlhQGFuYWxvZy5jb20+Cisg
IC0gU3RlZmFuIFBvcGEgPHN0ZWZhbi5wb3BhQGFuYWxvZy5jb20+CisKK2Rlc2NyaXB0aW9uOiB8
CisgIEFuYWxvZyBEZXZpY2VzIEFENzYwNiBTaW11bHRhbmVvdXMgU2FtcGxpbmcgQURDCisgIGh0
dHBzOi8vd3d3LmFuYWxvZy5jb20vbWVkaWEvZW4vdGVjaG5pY2FsLWRvY3VtZW50YXRpb24vZGF0
YS1zaGVldHMvYWQ3NjA2Xzc2MDYtNl83NjA2LTQucGRmCisgIGh0dHBzOi8vd3d3LmFuYWxvZy5j
b20vbWVkaWEvZW4vdGVjaG5pY2FsLWRvY3VtZW50YXRpb24vZGF0YS1zaGVldHMvQUQ3NjE2LnBk
ZgorCitwcm9wZXJ0aWVzOgorICBjb21wYXRpYmxlOgorICAgIGVudW06CisgICAgICAtIGFkaSxh
ZDc2MDUtNAorICAgICAgLSBhZGksYWQ3NjA2LTgKKyAgICAgIC0gYWRpLGFkNzYwNi02CisgICAg
ICAtIGFkaSxhZDc2MDYtNAorICAgICAgLSBhZGksYWQ3NjE2CisKKyAgcmVnOgorICAgIG1heEl0
ZW1zOiAxCisKKyAgc3BpLWNwaGE6IHRydWUKKworICBhdmNjLXN1cHBseToKKyAgICBkZXNjcmlw
dGlvbjoKKyAgICAgIFBoYW5kbGUgdG8gdGhlIEF2Y2MgcG93ZXIgc3VwcGx5CisgICAgbWF4SXRl
bXM6IDEKKworICBpbnRlcnJ1cHRzOgorICAgIG1heEl0ZW1zOiAxCisKKyAgYWRpLGNvbnZlcnNp
b24tc3RhcnQtZ3Bpb3M6CisgICAgZGVzY3JpcHRpb246CisgICAgICBNdXN0IGJlIHRoZSBkZXZp
Y2UgdHJlZSBpZGVudGlmaWVyIG9mIHRoZSBDT05WU1QgcGluLgorICAgICAgVGhpcyBsb2dpYyBp
bnB1dCBpcyB1c2VkIHRvIGluaXRpYXRlIGNvbnZlcnNpb25zIG9uIHRoZSBhbmFsb2cKKyAgICAg
IGlucHV0IGNoYW5uZWxzLiBBcyB0aGUgbGluZSBpcyBhY3RpdmUgaGlnaCwgaXQgc2hvdWxkIGJl
IG1hcmtlZAorICAgICAgR1BJT19BQ1RJVkVfSElHSC4KKyAgICBtYXhJdGVtczogMQorCisgIHJl
c2V0LWdwaW9zOgorICAgIGRlc2NyaXB0aW9uOgorICAgICAgTXVzdCBiZSB0aGUgZGV2aWNlIHRy
ZWUgaWRlbnRpZmllciBvZiB0aGUgUkVTRVQgcGluLiBJZiBzcGVjaWZpZWQsCisgICAgICBpdCB3
aWxsIGJlIGFzc2VydGVkIGR1cmluZyBkcml2ZXIgcHJvYmUuIEFzIHRoZSBsaW5lIGlzIGFjdGl2
ZSBoaWdoLAorICAgICAgaXQgc2hvdWxkIGJlIG1hcmtlZCBHUElPX0FDVElWRV9ISUdILgorICAg
IG1heEl0ZW1zOiAxCisKKyAgc3RhbmRieS1ncGlvczoKKyAgICBkZXNjcmlwdGlvbjoKKyAgICAg
ICBNdXN0IGJlIHRoZSBkZXZpY2UgdHJlZSBpZGVudGlmaWVyIG9mIHRoZSBTVEJZIHBpbi4gVGhp
cyBwaW4gaXMgdXNlZAorICAgICAgIHRvIHBsYWNlIHRoZSBBRDc2MDYgaW50byBvbmUgb2YgdHdv
IHBvd2VyLWRvd24gbW9kZXMsIFN0YW5kYnkgbW9kZSBvcgorICAgICAgIFNodXRkb3duIG1vZGUu
IEFzIHRoZSBsaW5lIGlzIGFjdGl2ZSBsb3csIGl0IHNob3VsZCBiZSBtYXJrZWQKKyAgICAgICBH
UElPX0FDVElWRV9MT1cuCisgICAgbWF4SXRlbXM6IDEKKworICBhZGksZmlyc3QtZGF0YS1ncGlv
czoKKyAgICBkZXNjcmlwdGlvbjoKKyAgICAgIE11c3QgYmUgdGhlIGRldmljZSB0cmVlIGlkZW50
aWZpZXIgb2YgdGhlIEZSU1REQVRBIHBpbi4KKyAgICAgIFRoZSBGUlNUREFUQSBvdXRwdXQgaW5k
aWNhdGVzIHdoZW4gdGhlIGZpcnN0IGNoYW5uZWwsIFYxLCBpcworICAgICAgYmVpbmcgcmVhZCBi
YWNrIG9uIGVpdGhlciB0aGUgcGFyYWxsZWwsIGJ5dGUgb3Igc2VyaWFsIGludGVyZmFjZS4KKyAg
ICAgIEFzIHRoZSBsaW5lIGlzIGFjdGl2ZSBoaWdoLCBpdCBzaG91bGQgYmUgbWFya2VkIEdQSU9f
QUNUSVZFX0hJR0guCisgICAgbWF4SXRlbXM6IDEKKworICBhZGkscmFuZ2UtZ3Bpb3M6CisgICAg
ZGVzY3JpcHRpb246CisgICAgICBNdXN0IGJlIHRoZSBkZXZpY2UgdHJlZSBpZGVudGlmaWVyIG9m
IHRoZSBSQU5HRSBwaW4uIFRoZSBwb2xhcml0eSBvbgorICAgICAgdGhpcyBwaW4gZGV0ZXJtaW5l
cyB0aGUgaW5wdXQgcmFuZ2Ugb2YgdGhlIGFuYWxvZyBpbnB1dCBjaGFubmVscy4gSWYKKyAgICAg
IHRoaXMgcGluIGlzIHRpZWQgdG8gYSBsb2dpYyBoaWdoLCB0aGUgYW5hbG9nIGlucHV0IHJhbmdl
IGlzIMKxMTBWIGZvcgorICAgICAgYWxsIGNoYW5uZWxzLiBJZiB0aGlzIHBpbiBpcyB0aWVkIHRv
IGEgbG9naWMgbG93LCB0aGUgYW5hbG9nIGlucHV0IHJhbmdlCisgICAgICBpcyDCsTVWIGZvciBh
bGwgY2hhbm5lbHMuIEFzIHRoZSBsaW5lIGlzIGFjdGl2ZSBoaWdoLCBpdCBzaG91bGQgYmUgbWFy
a2VkCisgICAgICBHUElPX0FDVElWRV9ISUdILgorICAgIG1heEl0ZW1zOiAxCisKKyAgYWRpLG92
ZXJzYW1wbGluZy1yYXRpby1ncGlvczoKKyAgICBkZXNjcmlwdGlvbjoKKyAgICAgIE11c3QgYmUg
dGhlIGRldmljZSB0cmVlIGlkZW50aWZpZXIgb2YgdGhlIG92ZXItc2FtcGxpbmcKKyAgICAgIG1v
ZGUgcGlucy4gQXMgdGhlIGxpbmUgaXMgYWN0aXZlIGhpZ2gsIGl0IHNob3VsZCBiZSBtYXJrZWQK
KyAgICAgIEdQSU9fQUNUSVZFX0hJR0guCisgICAgbWF4SXRlbXM6IDEKKworICBhZGksc3ctbW9k
ZToKKyAgICBkZXNjcmlwdGlvbjoKKyAgICAgIFNvZnR3YXJlIG1vZGUgb2Ygb3BlcmF0aW9uLCBz
byBmYXIgYXZhaWxhYmxlIG9ubHkgZm9yIGFkNzYxNi4KKyAgICAgIEl0IGlzIGVuYWJsZWQgd2hl
biBhbGwgdGhyZWUgb3ZlcnNhbXBsaW5nIG1vZGUgcGlucyBhcmUgY29ubmVjdGVkIHRvCisgICAg
ICBoaWdoIGxldmVsLiBUaGUgZGV2aWNlIGlzIGNvbmZpZ3VyZWQgYnkgdGhlIGNvcnJlc3BvbmRp
bmcgcmVnaXN0ZXJzLiBJZiB0aGUKKyAgICAgIGFkaSxvdmVyc2FtcGxpbmctcmF0aW8tZ3Bpb3Mg
cHJvcGVydHkgaXMgZGVmaW5lZCwgdGhlbiB0aGUgZHJpdmVyIHdpbGwgc2V0IHRoZQorICAgICAg
b3ZlcnNhbXBsaW5nIGdwaW9zIHRvIGhpZ2guIE90aGVyd2lzZSwgaXQgaXMgYXNzdW1lZCB0aGF0
IHRoZSBwaW5zIGFyZSBoYXJkd2lyZWQKKyAgICAgIHRvIFZERC4KKyAgICBtYXhJdGVtczogMQor
ICAgIHR5cGU6IGJvb2xlYW4KKworcmVxdWlyZWQ6CisgIC0gY29tcGF0aWJsZQorICAtIHJlZwor
ICAtIHNwaS1jcGhhCisgIC0gYXZjYy1zdXBwbHkKKyAgLSBpbnRlcnJ1cHRzCisgIC0gYWRpLGNv
bnZlcnNpb24tc3RhcnQtZ3Bpb3MKKworZXhhbXBsZXM6CisgIC0gfAorICAgIHNwaTAgeworICAg
ICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKKyAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47CisK
KyAgICAgICAgYWRjQDAgeworICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYWRpLGFkNzYw
Ni04IjsKKyAgICAgICAgICAgICAgICByZWcgPSA8MD47CisgICAgICAgICAgICAgICAgc3BpLW1h
eC1mcmVxdWVuY3kgPSA8MTAwMDAwMD47CisgICAgICAgICAgICAgICAgc3BpLWNwb2w7CisKKyAg
ICAgICAgICAgICAgICBhdmNjLXN1cHBseSA9IDwmYWRjX3ZyZWY+OworCisgICAgICAgICAgICAg
ICAgaW50ZXJydXB0cyA9IDwyNSBJUlFfVFlQRV9FREdFX0ZBTExJTkc+OworICAgICAgICAgICAg
ICAgIGludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8+OworCisgICAgICAgICAgICAgICAgYWRpLGNv
bnZlcnNpb24tc3RhcnQtZ3Bpb3MgPSA8JmdwaW8gMTcgR1BJT19BQ1RJVkVfSElHSD47CisgICAg
ICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW8gMjcgR1BJT19BQ1RJVkVfSElHSD47Cisg
ICAgICAgICAgICAgICAgYWRpLGZpcnN0LWRhdGEtZ3Bpb3MgPSA8JmdwaW8gMjIgR1BJT19BQ1RJ
VkVfSElHSD47CisgICAgICAgICAgICAgICAgYWRpLG92ZXJzYW1wbGluZy1yYXRpby1ncGlvcyA9
IDwmZ3BpbyAxOCBHUElPX0FDVElWRV9ISUdICisgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAmZ3BpbyAyMyBHUElPX0FDVElWRV9ISUdICisgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmZ3BpbyAyNiBHUElPX0FDVElW
RV9ISUdIPjsKKyAgICAgICAgICAgICAgICBzdGFuZGJ5LWdwaW9zID0gPCZncGlvIDI0IEdQSU9f
QUNUSVZFX0xPVz47CisgICAgICAgICAgICAgICAgYWRpLHN3LW1vZGU7CisgICAgICAgIH07Cisg
ICAgfTsKKy4uLgpkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwppbmRleCAw
NTJkN2E4NTkxZmIuLmQyZTQ2NTc3MjA3MSAxMDA2NDQKLS0tIGEvTUFJTlRBSU5FUlMKKysrIGIv
TUFJTlRBSU5FUlMKQEAgLTkwMCw3ICs5MDAsNyBAQCBMOglsaW51eC1paW9Admdlci5rZXJuZWwu
b3JnCiBXOglodHRwOi8vZXouYW5hbG9nLmNvbS9jb21tdW5pdHkvbGludXgtZGV2aWNlLWRyaXZl
cnMKIFM6CVN1cHBvcnRlZAogRjoJZHJpdmVycy9paW8vYWRjL2FkNzYwNi5jCi1GOglEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaWlvL2FkYy9hZGksYWQ3NjA2LnR4dAorRjoJRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lpby9hZGMvYWRpLGFkNzYwNi55YW1sCiAK
IEFOQUxPRyBERVZJQ0VTIElOQyBBRDc3NjgtMSBEUklWRVIKIE06CVN0ZWZhbiBQb3BhIDxzdGVm
YW4ucG9wYUBhbmFsb2cuY29tPgotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
