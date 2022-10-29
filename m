Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 941A0612355
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Oct 2022 15:36:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04B45813AE;
	Sat, 29 Oct 2022 13:36:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04B45813AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id czw2mB17LCo9; Sat, 29 Oct 2022 13:36:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5E5F813AC;
	Sat, 29 Oct 2022 13:36:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5E5F813AC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B2FC1BF5DF
 for <devel@linuxdriverproject.org>; Sat, 29 Oct 2022 13:36:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7EEAF813AE
 for <devel@linuxdriverproject.org>; Sat, 29 Oct 2022 13:36:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EEAF813AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d8XNEhy4PG4f for <devel@linuxdriverproject.org>;
 Sat, 29 Oct 2022 13:36:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDFA6813AC
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10hn2224.outbound.protection.outlook.com [52.100.156.224])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BDFA6813AC
 for <devel@driverdev.osuosl.org>; Sat, 29 Oct 2022 13:36:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MGl/Axhysk4NgRnv/gTj6EtuiR9pR3HYakH1UXNuORAg8xwE+77b7Zmh4pmghDaGiIs8oqmhVMB9nm36zhimibHN7PaHsVXAGtCy29aEHZZVAc+74CMEqVQ6hRvg6VH6foHLD6YbPfIS+ZDMPzxPEsYH4Ldw/ML2HiCZ4dfQ8n7aIEWbZaKQdW/IHcd6yhacXROv5e1FmrcGW2fsgQ8qac7H2urji7UYUOlO9+V5u+KadzaWNPJkyHu5K9rWvwPkvv3p8Y35HGzdnfRuExBigJUpdcJiUBftuSKPmU8sekycs1jm7A6aa7CYRyczkTBk5oHvmX2lSGwPKZGt2PnIHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2lDsrmEtgwVjnlPTTbBNqECcMrOOYQ+i2/wa2nUWZ3U=;
 b=HzIuEYCl3nJqA4ZtX3KuM2WrhspcrvKzT4QqoTrddg4WLHbwTWr4EVy+uYvubrKy/2hqAY5Mimb+28G885t01GGdflhVdfN2qaWQaXl2nj8Sv1Ah+N7siR7l1fGVoMoVDPnYfoAhtjAb4nZ9RZaHsuUyLwbs3Rqhy/D1T3+7W3rk+AuEPrQv4+NzP5X3njT0peZkHUBwLzFgb40lzPybeggY4/NAbL1AMagjRwK4+qd6i1CsD3MomohNo7yGCk54b6aoYkbyCJ2nAxF/s0XApKO5nu6fnuLv3EOOZejLOl0jxO4UcYDWIMDseF3ISW04xBmGi41Ca59wj2Mz8wV2pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=permerror (sender ip
 is 63.158.138.61) smtp.rcpttodomain=gauseisd.net
 smtp.mailfrom=z-mourtaga.ps; 
 dmarc=fail (p=reject sp=none pct=100) action=oreject
 header.from=z-mourtaga.ps; dkim=none (message not signed); arc=none
Received: from DM6PR13CA0070.namprd13.prod.outlook.com (2603:10b6:5:134::47)
 by BL0PR1901MB4723.namprd19.prod.outlook.com (2603:10b6:208:1cd::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Sat, 29 Oct
 2022 13:36:37 +0000
Received: from DM6NAM11FT061.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:134:cafe::e4) by DM6PR13CA0070.outlook.office365.com
 (2603:10b6:5:134::47) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.10 via Frontend
 Transport; Sat, 29 Oct 2022 13:36:37 +0000
X-MS-Exchange-Authentication-Results: spf=permerror (sender IP is
 63.158.138.61) smtp.mailfrom=z-mourtaga.ps; dkim=none (message not signed)
 header.d=none;dmarc=fail action=oreject header.from=z-mourtaga.ps;
Received-SPF: PermError (protection.outlook.com: domain of z-mourtaga.ps used
 an invalid SPF mechanism)
Received: from mail.holidaycompanies.com (63.158.138.61) by
 DM6NAM11FT061.mail.protection.outlook.com (10.13.173.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5769.14 via Frontend Transport; Sat, 29 Oct 2022 13:36:37 +0000
Received: from HSSMTP02.holidaycompanies.com (10.0.22.48) by
 HSSMTP04.holidaycompanies.com (10.0.22.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Sat, 29 Oct 2022 08:36:36 -0500
Received: from [212.193.29.51] (10.0.22.35) by HSSMTP02.holidaycompanies.com
 (10.0.22.48) with Microsoft SMTP Server id 15.1.2242.12 via Frontend
 Transport; Sat, 29 Oct 2022 08:36:30 -0500
MIME-Version: 1.0
Content-Description: Mail message body
Subject: I am waiting for your immediate response....Dated 29th October 2022 
To: Recipients <info@z-mourtaga.ps>
From: Mary Clough <info@z-mourtaga.ps>
Date: Sat, 29 Oct 2022 06:36:26 -0700
Message-ID: <d4237e2a-3db8-4774-b594-bf5226ba0664@HSSMTP02.holidaycompanies.com>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT061:EE_|BL0PR1901MB4723:EE_
X-MS-Office365-Filtering-Correlation-Id: 191621ea-4951-435c-c51a-08dab9b29a5a
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?vzUSQSujLC8WzkI9frPXFixXaCdij1qKXD68SLoU4XMMSga523v06f+5XD?=
 =?iso-8859-1?Q?I+25Y1HV1Zk69hueZ2958kynBdHAhicYRN9zYtuZD4m1rXot/jn6CK9set?=
 =?iso-8859-1?Q?ppj1IDPX95aNvXmwxpIC23GGe0K0jvQtmuSgfsASo0tWzQkmLxN4mekj3U?=
 =?iso-8859-1?Q?0yUUuxpc2OldKD+sBu/lZOobZQoABonsA/HnAaXbuvwbOAyUM/Kc9Ij4Ja?=
 =?iso-8859-1?Q?42omTW/J6It87oSnKOOEg/9JtJTBG6rzV+We24+ExqS/GNByHHEXSbgql/?=
 =?iso-8859-1?Q?ywTwhKvB6bQNu94bd81QbIGcTfGzX9JxXIlvUAxKL1qHuzOgtTOYJQ+vGE?=
 =?iso-8859-1?Q?4I6LjYf8ii45CHK2qsqrW20VRh7QASfow3yh/aPLX6afv2t2kac5j2N9ml?=
 =?iso-8859-1?Q?+Zo/TUgenJw9O6QV8kEsHgXyr+jahuDfnE5be5UuW2u2Xu2j/vz+ax8/FT?=
 =?iso-8859-1?Q?oaGXs23kkC/ftOyNch1rH9jg+y+ibLXPHYGRDqSiI75UP/aR4IfwlXP1zc?=
 =?iso-8859-1?Q?KlVdv2LjsfPspmA7zz+Ev1HGMK78W9PpNMw7zqwwEOlFXZ6morrXJH4nXi?=
 =?iso-8859-1?Q?gsqxL3RRfElzeb8CLKCOaMxb9j8kDh/MWGZ3bZW6YpP6P9gDK0iMdlc6x6?=
 =?iso-8859-1?Q?UNY2LGb3OKizXa0592eilDUbL/fWOlol+xjRF/nasCc3j+flqmRjKNq0mA?=
 =?iso-8859-1?Q?0K1Q3DPJktYv5hfFPlT21Sov7KNdxXJU23e10025ObA0npLjj+MhKXbA//?=
 =?iso-8859-1?Q?hhauXxqh9rBszvyYr0K3mDDlx4Vo3oP2HnAiq0jSdoN2RvL8/McrqjhsdN?=
 =?iso-8859-1?Q?emJcdmdFFnZx+UE9dcyKPXIoF6VeujVxeJ+l7r6VAjDRSjqGbrtid8vNb6?=
 =?iso-8859-1?Q?OEQUZySwx16Dgj9245iQOTo4c9BmS7oAKhO8Rhb/ehscfgYtxZPfetWTQH?=
 =?iso-8859-1?Q?ZRbYth1RuGZ6lv6NNpBN1lBB8iN0eKXQfuEb+LvtvfAsOnuQSqXuTDG8Pd?=
 =?iso-8859-1?Q?/BXVPSK7ZnOXfQRGDj9+Jra8QqX7vpcTzPX/y+mPlHrxc77Jp/MZrA4EAu?=
 =?iso-8859-1?Q?wlnspHC98XpSWPk11c/Exg2XIk7rlfO8+IR/fMAcholA+CbqgeL99Nu4IV?=
 =?iso-8859-1?Q?LTrOibYq+Efwp62rT+z64Q2Q4WnQ9vzjyBOGn1cZFdKlQ0glpnIxjK9smM?=
 =?iso-8859-1?Q?A1gDlj+xNmXeIq+7Cl4a/wQuo6YpoSkoxSdaC4XgjD/ejkS05gM8s2x0?=
X-Forefront-Antispam-Report: CIP:63.158.138.61; CTRY:US; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:mail.holidaycompanies.com; PTR:mail.holidaycompanies.com;
 CAT:OSPM;
 SFS:(13230022)(4636009)(136003)(39860400002)(346002)(376002)(396003)(84040400005)(451199015)(40470700004)(31686004)(40480700001)(83380400001)(66899015)(40460700003)(956004)(86362001)(32650700002)(31696002)(82740400003)(7416002)(5660300002)(2906002)(7596003)(35950700001)(7636003)(356005)(9686003)(26005)(336012)(6666004)(2860700004)(498600001)(16576012)(316002)(8936002)(6706004)(41300700001)(70586007)(8676002)(70206006)(6200100001)(6862004)(82310400005)(62346012);
 DIR:OUT; SFP:1501; 
X-OriginatorOrg: MyCoucheTard.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2022 13:36:37.0678 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 191621ea-4951-435c-c51a-08dab9b29a5a
X-MS-Exchange-CrossTenant-Id: 19da1f3c-d958-44ea-850d-195c1502525c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=19da1f3c-d958-44ea-850d-195c1502525c; Ip=[63.158.138.61];
 Helo=[mail.holidaycompanies.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT061.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR1901MB4723
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=MyCoucheTard.onmicrosoft.com; s=selector1-MyCoucheTard-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2lDsrmEtgwVjnlPTTbBNqECcMrOOYQ+i2/wa2nUWZ3U=;
 b=FOtr+At0nWmI2WNHqejcu34n8MLwpTLKl9BsW9I2aWORgz45kBd2g9HbqWil+n20P3IoNpFjjLvTtjZM1OebvPo6Id0ZZDFuLVUzvCNVIfyoy+UCeYtghqPvgemlIelQ9vjb9gqIwjQ21zgy2xO2bKC1tNvS0dFJdsnFcv2P8+w=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=MyCoucheTard.onmicrosoft.com
 header.i=@MyCoucheTard.onmicrosoft.com header.a=rsa-sha256
 header.s=selector1-MyCoucheTard-onmicrosoft-com header.b=FOtr+At0
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
Reply-To: marycloughprivate@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Let me start by introducing myself, I am Mrs. Mary Clough. I live and work =
in Glasgow, United Kingdom. I have years of experience in investment, priva=
te equity and project financing.

A top banker friend of mine uncovered a dormant account that has GBP =A319,=
800,000.00 (Nineteen Million, Eight Hundred Thousand Great Britain Pounds).=
 The account had been abandoned for over ten years and could not be traced =
to anybody.

My friend had asked me to get a partner who will collaborate with us in ret=
rieving the money hence I contacted you. I want you to assist us in repatri=
ating the money. It is a deal between us. You will be greatly compensated. =
Part of our share will be invested in your country. =


You will be presented to the bank as the Next of Kin to  the original depos=
itor of the funds. Necessary documents and information will be made availab=
le to you at every stage.

I need your understanding and collaboration to get this money out from the =
bank otherwise the bank will confiscate it in coming weeks. =


There is no risk involved. With my friend at the bank, everything will be l=
egally done.

To proceed, kindly provide your following details;

Names:
Address:
Telephone number:
Age:
Occupation:

I am waiting for your immediate reply.

Warm regards
Mrs. Mary Clough
Glasgow, United Kingdom
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
