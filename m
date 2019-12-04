Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DDE112376
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Dec 2019 08:18:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9707086BCC;
	Wed,  4 Dec 2019 07:18:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gk90jQ3XD6KL; Wed,  4 Dec 2019 07:18:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 13430857F8;
	Wed,  4 Dec 2019 07:18:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D07F1BF27C
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 07:18:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0FB9F8829A
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 07:18:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2PxDZJpjKWFG for <devel@linuxdriverproject.org>;
 Wed,  4 Dec 2019 07:18:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8AD3187A8E
 for <devel@driverdev.osuosl.org>; Wed,  4 Dec 2019 07:18:19 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB47Hu5o023703; Wed, 4 Dec 2019 02:18:18 -0500
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-00128a01.pphosted.com with ESMTP id 2wkk57tvg0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Dec 2019 02:18:17 -0500
Received: from m0167088.ppops.net (m0167088.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id xB47IHMe002532;
 Wed, 4 Dec 2019 02:18:17 -0500
Received: from nam03-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam03lp2055.outbound.protection.outlook.com [104.47.41.55])
 by mx0a-00128a01.pphosted.com with ESMTP id 2wkk57tvfx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Dec 2019 02:18:17 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YbIb9FJ52voLO8HRFOc8ukAHcG0X9yY6dbcciqTs9qfRF1IspBKJgMC7mSBDa2yrsLoEWRzI122Nuab7RMpME71F9kLB4dImdxnceImgpTtca+CRpe/xD2N94a2CkBeucrco0uWG0IT5kqnH2UFcAonkm1vN3aXCdVLP6XHVYV5RXIuZ22XEJCNrKvnGIy5uzz/h4cS5IOIgmvYGBXYYHb+mCHkgebMHG3Bzre/Zsn+9+YrpZlP7cu32QAZyFeyFERQFMDxSgidZJOHAeMsFYrAiObbSOgG+aSpS1MzTZJAXa6z394WxBuMtni1SNWPnQKt4rUTF3wcsL1Q0exkVGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bJa4tNGNsMudrI2PYwiMwR72qp3OSswN2/tCtkc2F3I=;
 b=eNxSOsiV72UCrNoUaN8gBKkD5t5cbvbdasbruMSvtrji0rPRbQkpp3kRvElBPaXqHD2jOW+pqnJRUgJ/xq6ebthic2yhCCvpns6E+K9HLfqo0azpf7GR5Y09+U0L+KRKrBlZzH76/m8lxV8Gla7sqigkSbD6Xo17c0JsoFhKt1mZHxVq4SjN7eeWpHj8CVHwLfNLUmvwL/5G9okZKDQA3oXs5DwT+VYWz5hMcT2luzWaYqEiXcT0zWf2QKf2I/D7EA6TII++lfADXVmhU9O7YrMDTPeJ51dKONVNS8jm8VwCnDNbvVRZQIjYLg9kdf76ZXTTP6uJH0TIJiKe2by5eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bJa4tNGNsMudrI2PYwiMwR72qp3OSswN2/tCtkc2F3I=;
 b=dzZSCvMWzMPitJVgTibqsZa13U2r9LZKkCrqFXu289238EdgJDMtouMfk3HMIfJ3MuZW+11tRFhsqF8yYICiY1nYJTR93JwZ8cWZWqXCsbZosq7GfdEvaEryzJcO4MhaZylLJGmzW6OpZAcID6q3EqrOqVKyMUC4PsNLDEZ0W6o=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5175.namprd03.prod.outlook.com (20.180.4.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.19; Wed, 4 Dec 2019 07:18:15 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c%5]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 07:18:15 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "Jonathan.Cameron@huawei.com" <Jonathan.Cameron@huawei.com>,
 "broonie@kernel.org" <broonie@kernel.org>
Subject: Re: [PATCH v4] dt-bindings: iio: accel: add binding documentation for
 ADIS16240
Thread-Topic: [PATCH v4] dt-bindings: iio: accel: add binding documentation
 for ADIS16240
Thread-Index: AQHVob2/Uuv8Me0otU+pOQKTkzIOdqeYolyAgALkwgCACa2sAIADeAIAgAADpwCAAPJnAA==
Date: Wed, 4 Dec 2019 07:18:15 +0000
Message-ID: <c725b1b1475148ded6168667fa0227bc18de0854.camel@analog.com>
References: <20191123051927.5016-1-rodrigorsdc@gmail.com>
 <20191123114119.7b0c3447@archlinux>
 <a55b9c576eded8c91a985aabbba89180561ab156.camel@analog.com>
 <20191201114032.1a972dda@archlinux> <20191203163850.GN1998@sirena.org.uk>
 <20191203165154.00005793@Huawei.com>
In-Reply-To: <20191203165154.00005793@Huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 91c52bb7-6976-43c4-0070-08d7788a2115
x-ms-traffictypediagnostic: CH2PR03MB5175:
x-ld-processed: eaa689b4-8f87-40e0-9c6f-7228de4d754a,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR03MB5175A227D230BEBD3A9C3458F95D0@CH2PR03MB5175.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(366004)(376002)(346002)(39860400002)(189003)(199004)(66556008)(66946007)(66446008)(76116006)(66476007)(102836004)(26005)(478600001)(91956017)(14454004)(2616005)(71190400001)(7736002)(110136005)(11346002)(14444005)(229853002)(256004)(7416002)(36756003)(99286004)(186003)(316002)(54906003)(76176011)(446003)(305945005)(64756008)(6506007)(71200400001)(3846002)(118296001)(8936002)(86362001)(6512007)(4326008)(2906002)(6246003)(6116002)(6486002)(6436002)(81166006)(25786009)(8676002)(5660300002)(2501003)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5175;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yCUbokOfSV9D8hmnnlN7e9YvcfaPg4cJJHsOprEFe8KVUF9zFSgdXnkPqbHtznqt0Kj0qs1DzgZLKAOEcbpjySAIOa3g9Bzm4e7eCBaKiwGpCza+Iyt/nueJTUQX0xIlwczaMj+j4HmJUNipbwCpri2mhKyJo9mBaDfhZrjtOAQ2VD2+R/w7A+1pWmvtYEa4KhE3NFcI9Pkq6r/mrWdByRtez9dmJgpaf0TJwFluuUpeXF0NC0fYkfGrcRKQWDOvf4ViES68wfmO3rI9mT5IBrs492YdRkhFyCWVlXJBX/xbV2tWdBtHRKZ5UFG2jokTZSuacDyImMpt06yHsFQpXvM5GElrH+2ZnWq8ihx8+jG/nI8hEiU1UaFPiwXE1wJ3IvR36GqAvxSIvEFxmBcyU2uajDQTOuXGEHJ8GggP97Lwb81LHVr1JfY7apWg8r1T
Content-ID: <8A7949AA1201024DADF66D7201F6A553@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91c52bb7-6976-43c4-0070-08d7788a2115
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 07:18:15.0724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ashQjf9xw+jcqUsOqovcXxlpPbV3Jd2sk1iGnVvR64gjkkYlcqiSIy9XK3T6zWR32ec9EwVo5Ake3k+Xx7NLDZclVTIUfphfDC9SRzPny/s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5175
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-04_01:2019-12-04,2019-12-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0
 adultscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0 phishscore=0
 priorityscore=1501 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912040054
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rodrigorsdc@gmail.com" <rodrigorsdc@gmail.com>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2019-12-03 at 16:51 +0000, Jonathan Cameron wrote:
> On Tue, 3 Dec 2019 16:38:50 +0000
> Mark Brown <broonie@kernel.org> wrote:
> 
> > On Sun, Dec 01, 2019 at 11:40:32AM +0000, Jonathan Cameron wrote:
> > 
> > > +CC Mark as we probably need a more general view point on
> > > the question of whether SPI mode should be enforced by binding
> > > or in the driver.  
> > 
> > Not sure I see the question here, I think I was missing a bit of
> > the conversation?  It's perfectly fine for a driver to specify a
> > mode, if the hardware always uses some unusual mode then there's
> > no sense in forcing every single DT to set the same mode.  On the
> > other hand if there's some configuration for the driver that was
> > handling some board specific configuration that there's already
> > some generic SPI support for setting then it seems odd to have a
> > custom driver specific configuration mechanism.
> > 
> 
> If the driver picks a mode because that's what it says on the datasheet
> it prevents odd board configurations from working.  The question
> becomes whether it makes sense in general to assume those odd board
> conditions don't exist until we actually have one, or to assume that
> they might and push the burden on to all DT files.
> 
> Traditionally in IIO at least we've mostly taken the view the DT
> should be right and complete and had bindings state what normal
> parameters must be for it to work (assuming no inverters etc)
> 
> If we encode it in the driver, and we later meet such a board we
> end up with a custom dance to query the DT parameters again and
> only override if present.
> 
> We can't rely on the core SPI handling because I don't think
> there is any means of specifying a default.
> 
> We can adopt the view that in general these weird boards with inverters
> are weird and just handle them when they occur.  Sounds like that is your
> preference, at least for new parts.
> 
> For old ones we have no idea if there are boards out there using
> them with inverters so easiest is probably to just carry on putting them
> in the DT bindings.

There might be a few other options, which would require some SPI OF change.

One example (for spi-cpha):
        if (of_property_read_u32(nc, "spi-cpha", &tmp) == 0) {
                spi->mode |= SPI_CPHA_OVERRIDE;
                if (tmp)
                    spi->mode |= SPI_CPHA;
        } else 
             if (of_property_read_bool(nc, "spi-cpha"))
                    spi->mode |= SPI_CPHA;

Or another option could be:
        if (of_property_read_bool(nc, "spi-cpha-override")) {
                spi->mode |= SPI_CPHA_OVERRIDE;
        if
(of_property_read_bool(nc, "spi-cpha"))
                spi->mode |= SPI_CPHA;


Naturally, this would require that spi_setup() checks SPI_CPHA_OVERRIDE and
doesn't set SPI_CPHA if SPI_CPHA_OVERRIDE is set. 

Or maybe, a more complete solution would be an "spi-mode-conv" driver.
Similar to the fixed-factor-clock clk driver, which just does a computation
based on values from the DT.

To tell the truth, this would be a great idea, because we have something
like a passive 3-wire-to-4-wire HDL converter. This requires that the
driver be configured in 3-wire mode, the SPI controller in normal 4-wire.
That's because the SPI framework does a validation of the supported modes
(for the SPI controller) and invalidates what the device wants (which is
very reasonable).

An "spi-mode-conv" driver would also handle this 3-wire-4-wire dance, and
the level inversions, and other (similar) things.

Thoughts?
Alex

> 
> Jonathan
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
