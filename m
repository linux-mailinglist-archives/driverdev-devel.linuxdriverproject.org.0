Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B70A19F1BC
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 10:41:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D16E87DA6;
	Mon,  6 Apr 2020 08:41:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8XaQ4V0wtfU5; Mon,  6 Apr 2020 08:41:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DF5587C74;
	Mon,  6 Apr 2020 08:41:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA9891BF2F9
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 08:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E446085BDF
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 08:41:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8KawrG-haBdm for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 08:41:40 +0000 (UTC)
X-Greylist: delayed 00:58:03 by SQLgrey-1.7.6
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com
 [148.163.139.77])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BE23F85BD3
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 08:41:40 +0000 (UTC)
Received: from pps.filterd (m0167090.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0367dmpi002545; Mon, 6 Apr 2020 03:43:36 -0400
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
 by mx0b-00128a01.pphosted.com with ESMTP id 306pv6mwqd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 06 Apr 2020 03:43:36 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kB7y9x6BeP8LVs1p6aRQTKqfix3i3TXlVmKpYLuawCwqd2S+gPH9DBym1acc/nyL45FzFi+LAIT+M2mjEzmbh5kDiADWTwkVKC6/qI8qN6Y9eyvD96egndXCdxc/H/gDYsVcC3KTea0bSsPeduijGdvKeT3SOryOPPjoqrekqkJjlzKYG9JCdlWN0fftL44P32hVmlaxqfNFtZdFjtk3lYH5FN2X+8wntdNXUARharDWJSkICVicV48N+i+TrnkxXgqfaRSJXKA++u3LggyK5EGtGcJCto0kLYHkCixATaYdzbn/1VCb7nLxUeLojylLmsE5iBujGSYiXqHKByUh+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GLH3eYxeGjoOW32wlmiv/8OVUrJbktX15FZWjEFBVHs=;
 b=AN0XFCYTyysjNY5OR+HxzHvlForwBfph+1CBiwa/V+kWJPO7f9uJTFJfSMLPgn+e+hZjK0rNAwEah4aan0egge3lwwPEk7zhT42QzefVDnCUWdYUhx5PE/eS/DeXwEGVB+35RLNlye6JxvoSH1k+E8DXj/5XqmXtoqPjTASn5Z/+cyCBuL/2sav0v/uHNQwXElQQLadEOP9Y2avlRTxLrMHf4PYu9436892dvk9gwPoeD55CdzSHvyI/ihU0JwTbUFoB57kXlh2L7iJkGkBIWbjxemdJ6/qZ+VBJaANQeK2RUNcuKNsjUObsJmDldaYMrfwNAzCxuLG/DJdYHaU3eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GLH3eYxeGjoOW32wlmiv/8OVUrJbktX15FZWjEFBVHs=;
 b=l63BMsjhwM+aM9uCpF1MF0QhB3pDh+uZBbiE8X0OA+tR/1FC+Y1ZlGseq1BVvbhaaohCHiOHKQDjZAQF0tSIiRs/Rtel2pIRyoyDIyiLOYz5+4cQiVF8Gc64E+hTJBOY03rrvjvPIeB3SR8TSFIiN34aNKsUpou40whza1nvuQs=
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM6PR03MB3833.namprd03.prod.outlook.com (2603:10b6:5:47::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Mon, 6 Apr
 2020 07:43:34 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::c47f:ceee:cfda:6a7f]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::c47f:ceee:cfda:6a7f%3]) with mapi id 15.20.2878.018; Mon, 6 Apr 2020
 07:43:34 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "jic23@kernel.org" <jic23@kernel.org>
Subject: Re: [PATCH 3/3] staging: iio: ad5933: use
 iio_device_attach_kfifo_buffer() helper
Thread-Topic: [PATCH 3/3] staging: iio: ad5933: use
 iio_device_attach_kfifo_buffer() helper
Thread-Index: AQHWCCWQ4hJnvSmMUEmnOA6mGrgaNKhqX4uAgAFeToA=
Date: Mon, 6 Apr 2020 07:43:34 +0000
Message-ID: <d6622323388d02be2a06b35e009a37577b09036c.camel@analog.com>
References: <20200401125936.6398-1-alexandru.ardelean@analog.com>
 <20200401125936.6398-3-alexandru.ardelean@analog.com>
 <20200405114945.67110eb2@archlinux>
In-Reply-To: <20200405114945.67110eb2@archlinux>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.27.135.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c2c7ce80-6343-4286-48e8-08d7d9fe35e1
x-ms-traffictypediagnostic: DM6PR03MB3833:
x-microsoft-antispam-prvs: <DM6PR03MB38336892491FB479858DE082F9C20@DM6PR03MB3833.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0365C0E14B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB4411.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(346002)(376002)(136003)(39850400004)(396003)(366004)(6486002)(54906003)(86362001)(2906002)(2616005)(478600001)(26005)(6916009)(6506007)(8676002)(8936002)(81156014)(81166006)(316002)(6512007)(5660300002)(186003)(36756003)(4326008)(66446008)(66476007)(64756008)(66556008)(91956017)(76116006)(66946007)(71200400001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Khmgr5MdnbtrQOHPnTHYJGxVU3lSKPUaHhXp/UKVTcCc3izy+BraAFtsAaT5kyIE8jlybNPB7dsTD4uxXW/rEGUDhNkkIe0orYCr8wkLqA4j58UaPI+ETgZ5tJ+IcWsieBOWs+6W5WBPve64xJgBOFUm0TuHKMwI/Eji4vu70KplVApzMV3CVQBHkaG3mg5zhjbTkB+Sa0IOIoRsJoz0NgugUicdZZrU+nYCF8ueyjCYKnu2PJpdZRVwGlpE1MgAQ1D8cgIYibeWJ0FFrdU2ZqjY+KgIXjWoN7Wea+ZMWA0I6/ACMPkaFI1V6I9bdW42WaHV2KLYZSPkfPQV+RMXJGQm2o1pMMYZuBoQbdeR7VixeTUzdr14AbjN7y/pC4doMAMO9wv/EUOd9GRJ+kL4NxCKZF/bBNxI7skIAGnc9K5z0VN3NT5RMXtzNujMNOVU
x-ms-exchange-antispam-messagedata: jT5jlba8w7IRwEnSf/yrwSiSG+HSdmPSZr6soEUBPzIUxbilSz4MJRfTpbEktAySKgJhkTNvEoqJkfHStWStbHJre3mfYmd88m9fHz+b8jj2Rd5cvFqRw3QYUWGBlJFPwg06SOEmnyCKkE6850OQgA==
x-ms-exchange-transport-forked: True
Content-ID: <100150EA7852F74BB5DE28AF71326B1D@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2c7ce80-6343-4286-48e8-08d7d9fe35e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2020 07:43:34.4292 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OqK7iFGwgLL1T4otB4356ZeqU56QIEY96U8UPj738T5NaCl5j9/3WMw8lEU9GfIp0gL3imUlfGFRN8tL1COhrGG2dDAWr7b3QQAtvMdmgUU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB3833
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-06_03:2020-04-03,
 2020-04-06 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 adultscore=0 malwarescore=0 phishscore=0 mlxscore=0 bulkscore=0
 mlxlogscore=999 lowpriorityscore=0 spamscore=0 suspectscore=0
 clxscore=1015 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2003020000 definitions=main-2004060065
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
 "lars@metafoo.de" <lars@metafoo.de>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "lorenzo.bianconi83@gmail.com" <lorenzo.bianconi83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-04-05 at 11:49 +0100, Jonathan Cameron wrote:
> [External]
> 
> On Wed, 1 Apr 2020 15:59:36 +0300
> Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> 
> > This driver calls iio_kfifo_allocate() vs devm_iio_kfifo_allocate(). But
> > the conversion is still simpler here, and cleans-up/reduces some error
> > paths.
> > 
> > Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> 
> This mixes devm managed stuff an unmanaged.  Hence it fails the 'obviously
> correct'
> test.  If you wanted to do this you'd first need to sort out the unmanaged
> bits to be automatically unwound (regulators and clocks). Or potentially
> reorder
> the driver so those happen after this allocation is done.
> 

Yeah.
I was a bit sloppy here.
I think tried a broader cleanup/rework would be a better idea here.


> Thanks,
> 
> Jonathan
> 
> > ---
> >  .../staging/iio/impedance-analyzer/ad5933.c   | 28 ++++---------------
> >  1 file changed, 5 insertions(+), 23 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c
> > b/drivers/staging/iio/impedance-analyzer/ad5933.c
> > index af0bcf95ee8a..7bde93c6dd74 100644
> > --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
> > +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
> > @@ -602,22 +602,6 @@ static const struct iio_buffer_setup_ops
> > ad5933_ring_setup_ops = {
> >  	.postdisable = ad5933_ring_postdisable,
> >  };
> >  
> > -static int ad5933_register_ring_funcs_and_init(struct iio_dev *indio_dev)
> > -{
> > -	struct iio_buffer *buffer;
> > -
> > -	buffer = iio_kfifo_allocate();
> > -	if (!buffer)
> > -		return -ENOMEM;
> > -
> > -	iio_device_attach_buffer(indio_dev, buffer);
> > -
> > -	/* Ring buffer functions - here trigger setup related */
> > -	indio_dev->setup_ops = &ad5933_ring_setup_ops;
> > -
> > -	return 0;
> > -}
> > -
> >  static void ad5933_work(struct work_struct *work)
> >  {
> >  	struct ad5933_state *st = container_of(work,
> > @@ -738,26 +722,25 @@ static int ad5933_probe(struct i2c_client *client,
> >  	indio_dev->dev.parent = &client->dev;
> >  	indio_dev->info = &ad5933_info;
> >  	indio_dev->name = id->name;
> > -	indio_dev->modes = (INDIO_BUFFER_SOFTWARE | INDIO_DIRECT_MODE);
> > +	indio_dev->modes = INDIO_DIRECT_MODE;
> >  	indio_dev->channels = ad5933_channels;
> >  	indio_dev->num_channels = ARRAY_SIZE(ad5933_channels);
> >  
> > -	ret = ad5933_register_ring_funcs_and_init(indio_dev);
> > +	ret = iio_device_attach_kfifo_buffer(indio_dev, INDIO_BUFFER_SOFTWARE,
> > +					     &ad5933_ring_setup_ops);
> >  	if (ret)
> >  		goto error_disable_mclk;
> >  
> >  	ret = ad5933_setup(st);
> >  	if (ret)
> > -		goto error_unreg_ring;
> > +		goto error_disable_mclk;
> >  
> >  	ret = iio_device_register(indio_dev);
> >  	if (ret)
> > -		goto error_unreg_ring;
> > +		goto error_disable_mclk;
> >  
> >  	return 0;
> >  
> > -error_unreg_ring:
> > -	iio_kfifo_free(indio_dev->buffer);
> >  error_disable_mclk:
> >  	clk_disable_unprepare(st->mclk);
> >  error_disable_reg:
> > @@ -772,7 +755,6 @@ static int ad5933_remove(struct i2c_client *client)
> >  	struct ad5933_state *st = iio_priv(indio_dev);
> >  
> >  	iio_device_unregister(indio_dev);
> > -	iio_kfifo_free(indio_dev->buffer);
> >  	regulator_disable(st->reg);
> >  	clk_disable_unprepare(st->mclk);
> >  
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
