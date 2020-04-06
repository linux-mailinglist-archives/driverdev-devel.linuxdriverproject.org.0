Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E49ED19F154
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 10:12:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B147587D57;
	Mon,  6 Apr 2020 08:12:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kyVjx2TtkL-P; Mon,  6 Apr 2020 08:12:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8CDFA87C50;
	Mon,  6 Apr 2020 08:12:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 566951BF2F9
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 08:12:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4E12087C37
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 08:12:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wxq-hcMPdX85 for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 08:12:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0B81F868E5
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 08:12:46 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03684WOu008166; Mon, 6 Apr 2020 04:12:45 -0400
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
 by mx0a-00128a01.pphosted.com with ESMTP id 306m366ggj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 06 Apr 2020 04:12:45 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q9gxCkeBV4FP1ovy0gTigejPEDMIDp2mTWTVT+w8hejJUxs4kWNRqYVzjR3VBMvlC3INs0HmkzmybNS3ciOWxH1ioKTxstuMUaOjlIW/DksloP4QlyeYXM2ItYG4JA0ZaL8qmHvnatllTyQIMVoNqmu9rHmFkplvBAQ4eD+Z1SOlAUqbnvdyT9qyQuzV5hS22kJgnF+BRIsOieENwdwrTt7z2aFSzl+7J2lMbWaMIe/OriZuycQjfGJq+pnDMx6GYsfUkcxjKB307ozKt5U76hIN8wj9xbmCg5KgRUFXI3Rwo3achyJedhP6oKecAmLkFQt7QcAFTg0iadnftJ1ogw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/YkCiMoviSU6PLaQ4xJlVyXR7yhDxMeLVGCGuXSQX5k=;
 b=IiRmT+K4G9Z7oS9iavtBnBFctW5N2F14i6rusBfMvuTQZMapkz/+mxEJARdHcVz67Fh74zMjR/pRF2Bk486FzN88PXpHzKh7RE4JliJNyklFQGf8lxFOQoMt2TK4Ra4IqOq8DQ/mpnq5q2rjQNaKc3najyz44L0MrWlul/A5mrnPQMP21OljSsc8mnG8YtE4u7ETMLkclT3eiJjqzlbMsN9/UlWht5Epl7H6gtzvilqtGvlpdWToi/4bA/qQ+RFsq4CHpT+8zTt9thGWKpHdTXa9BH5y94WjislBAR7hky0A52eZ/1krB/ej9W4Tlm1xx8epRKajlNicpDQ/0Nd/jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/YkCiMoviSU6PLaQ4xJlVyXR7yhDxMeLVGCGuXSQX5k=;
 b=laOjN0VRwA/J8+1gJVJ44u3tNDUk8ENIJEzoBGrEKpWKsCODeGcxk1zbI5Y9KUZ67MQZiHy5BkGMU6ekl4t0lf7bXy1u1Z7btOJUNWjNpwGdXUmssLhA9NekxqxOB7hgRMjn1OgJqbsux5p1I4w2tQiRKsOVtjLgXKI/zUP7xHo=
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM6PR03MB4427.namprd03.prod.outlook.com (2603:10b6:5:10d::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Mon, 6 Apr
 2020 08:12:44 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::c47f:ceee:cfda:6a7f]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::c47f:ceee:cfda:6a7f%3]) with mapi id 15.20.2878.018; Mon, 6 Apr 2020
 08:12:44 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "jic23@kernel.org" <jic23@kernel.org>
Subject: Re: [PATCH 1/3] iio: kfifo: add iio_device_attach_kfifo_buffer()
 helper
Thread-Topic: [PATCH 1/3] iio: kfifo: add iio_device_attach_kfifo_buffer()
 helper
Thread-Index: AQHWCCWGYhb0S8PCiE6zE1nPt+/QvahqXoEAgAFnfIA=
Date: Mon, 6 Apr 2020 08:12:42 +0000
Message-ID: <48e7f8d5f090971e0c48c0134ebb2dca86a0f144.camel@analog.com>
References: <20200401125936.6398-1-alexandru.ardelean@analog.com>
 <20200405114602.160c690b@archlinux>
In-Reply-To: <20200405114602.160c690b@archlinux>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.27.135.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 79dc745c-ac1e-4a2e-480f-08d7da0248b0
x-ms-traffictypediagnostic: DM6PR03MB4427:
x-microsoft-antispam-prvs: <DM6PR03MB44276B425733D066408B7944F9C20@DM6PR03MB4427.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0365C0E14B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB4411.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(396003)(366004)(346002)(376002)(136003)(39860400002)(76116006)(91956017)(64756008)(66556008)(66946007)(5660300002)(66476007)(81166006)(86362001)(8676002)(478600001)(71200400001)(36756003)(81156014)(8936002)(6512007)(26005)(6506007)(2906002)(54906003)(6916009)(2616005)(186003)(316002)(66446008)(4326008)(6486002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /6AZQc+X8oPQdNfeEmTPTYZOwUImcuLqZ567gNucj77fgD21PAw62eVorICK4Oi6+oM0Nvom5JhEuh9BTn2wrCJ/WRKmWybUgwpTegUgbrRNCwXTLZaF7aK7OefHGmllrpP55yZEqTlSkCMekI8IBbg8nIlp80i64FVfAMfr8Ye2aBaM6aFhvQxCJXTOgdU8UowGktTB2hjOxu/ERmKKCojp+fpwAKZwxvBOvIxd3RZxKG5yDU6N1roO7gNiRGAttQUEgpEapvP2Efcc1jy8RVc7JU/Xl2kmIkLRkv4i7yxbonnclBngHnWNIZvnisMUTFlQw+GPAMC8vD9UqiSDmdTTswytb+Twi7DgcLHDXpWbgRwTWW5hr20ZeprDYY+MJvrcRfSd0suTDdK/Ukb+zYeoNzxj7JeYP/JmUuVS30424VOtXc0JyjNKD75YDb5x
x-ms-exchange-antispam-messagedata: DtCCrnDSKHHMX3Cgp4E+edIMAL9AjiYCwqkaiIGHi1jtfmV2mEfvOkivafdu0apetRsl+msCAhqtMbvvs/s4rRd5nf6/lyJMWeDkqaFCTB75qHjjEHQJywXtgnzob52IN3C3x4633DmvExOIwPFBHw==
x-ms-exchange-transport-forked: True
Content-ID: <9B8BD079FF9825488EE053B0E46C165F@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79dc745c-ac1e-4a2e-480f-08d7da0248b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2020 08:12:43.9507 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hxDkNwv6TyhO9jtnTZtf/KmXAWCVa23K0tSAHToN8Afdy9RJj5VJXjI3BGK3SDq6BlZ0MhE/0jud2FVsUJg10qOrScIpFxh2YGZSRFejggE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB4427
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-06_04:2020-04-03,
 2020-04-06 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 phishscore=0 mlxscore=0
 mlxlogscore=999 suspectscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004060068
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

On Sun, 2020-04-05 at 11:46 +0100, Jonathan Cameron wrote:
> [External]
> 
> On Wed, 1 Apr 2020 15:59:34 +0300
> Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> 
> > This change adds the iio_device_attach_kfifo_buffer() helper/short-hand,
> > which groups the simple routine of allocating a kfifo buffers via
> > devm_iio_kfifo_allocate() and calling iio_device_attach_buffer().
> > 
> > The mode_flags parameter is required. The setup_ops parameter is optional.
> > 
> > This function will be a bit more useful when needing to define multiple
> > buffers per IIO device.
> > 
> > One requirement [that is more a recommendation] for this helper, is to call
> > it after 'indio_dev' has been populated.
> > 
> > Also, one consequence related to using this helper is that the resource
> > management of the buffer will be tied to 'indio_dev->dev'. Previously it
> > was open-coded, and each driver does it slightly differently. Most of them
> > tied it to the parent device, some of them to 'indio_dev->dev'.
> > This shouldn't be a problem, and may be a good idea when adding more
> > buffers per-device.
> 
> I'm glad you highlighted this subtlety.  I'm not sure it's safe in all cases
> because the result is that the managed cleanup for this will occur once we
> get to the cleanup for devm_iio_device_alloc and we release the indio_dev->dev
> 
> That would put it 'after' any other devm calls that are still hung off the
> parent
> device.
> 
> Now the question is whether that ever causes us problems... See next patch.
> It potentially does.  I think we need to provide the dev separately even
> if it feels a bit silly to do so.  Scope management is complex so I don't
> really want to force people to mix and match between different devices
> and so get it wrong by accident.
> 
> The other issue is that it's not readily apparent from the naming that
> this function is registering stuff that is cleaned up automatically or
> that it even allocates anything that might need that..
> 
> devm_iio_device_attach_new_kfifo_buffer maybe?
> 
> I'm sort of wondering if we should do what dma did and have
> 
> iiom_device_attach_new_kfifo_buffer to indicate it's managed in the
> scope of the iio device?
> 
> What do people think?
> 
> However, see patch 2 before commenting.  Reality is I'm not sure forcing
> managed calls to hang off iio_dev->dev is a good idea (at this stage given
> where we are).

What I am really after with this patch is to hide away these:
     iio_kfifo_free(indio_dev->buffer);
     iio_buffer_set_attrs(indio_dev->buffer, xxxx_fifo_attributes); 
i.e. not have 'indio_dev->buffer' open-coded in drivers, and hide it in IIO core
somewhere.
Some ideas can go in parallel [like this one] to add support for multiple
buffers.

So, I will think of a better [less sloppy] V2 for this.

One intermediate alternative is to do 'iio_device_kfifo_free(indio_dev)', but
I'll still try to think of a better devm_ approach.
devm_iio_device_attach_new_kfifo_buffer() sounds a bit long but may work.
iiom_device_attach_new_kfifo_buffer() can also work.

What if we just default attaching to the parent device?

Would it work to also attach the parent device in devm_iio_device_alloc() by
default?
Or change 'iio_device_alloc()' to take a parent device as argument?
Which for devm_iio_device_alloc(dev,...) would implicitly mean that 'dev' is
'parent'?

These are just some thoughts.


> 
> Thanks
> 
> Jonathan
> 
> 
> > Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> > ---
> >  drivers/iio/buffer/kfifo_buf.c | 37 ++++++++++++++++++++++++++++++++++
> >  include/linux/iio/kfifo_buf.h  |  4 ++++
> >  2 files changed, 41 insertions(+)
> > 
> > diff --git a/drivers/iio/buffer/kfifo_buf.c b/drivers/iio/buffer/kfifo_buf.c
> > index 3150f8ab984b..05b7c5fc6f1d 100644
> > --- a/drivers/iio/buffer/kfifo_buf.c
> > +++ b/drivers/iio/buffer/kfifo_buf.c
> > @@ -228,4 +228,41 @@ void devm_iio_kfifo_free(struct device *dev, struct
> > iio_buffer *r)
> >  }
> >  EXPORT_SYMBOL(devm_iio_kfifo_free);
> >  
> > +/**
> > + * iio_device_attach_kfifo_buffer - Allocate a kfifo buffer & attach it to
> > an IIO device
> > + * @indio_dev: The device the buffer should be attached to
> > + * @mode_flags: The mode flags for this buffer (INDIO_BUFFER_SOFTWARE
> > and/or
> > + *		INDIO_BUFFER_TRIGGERED).
> > + * @setup_ops: The setup_ops required to configure the HW part of the
> > buffer (optional)
> > + *
> > + * This function allocates a kfifo buffer via devm_iio_kfifo_allocate() and
> > + * attaches it to the IIO device via iio_device_attach_buffer().
> > + * This is meant to be a bit of a short-hand/helper function as many driver
> > + * seem to do this.
> > + */
> > +int iio_device_attach_kfifo_buffer(struct iio_dev *indio_dev,
> > +				   int mode_flags,
> > +				   const struct iio_buffer_setup_ops *setup_ops)
> > +{
> > +	struct iio_buffer *buffer;
> > +
> > +	if (mode_flags)
> > +		mode_flags &= kfifo_access_funcs.modes;
> > +
> > +	if (!mode_flags)
> > +		return -EINVAL;
> > +
> > +	buffer = devm_iio_kfifo_allocate(&indio_dev->dev);
> > +	if (!buffer)
> > +		return -ENOMEM;
> > +
> > +	iio_device_attach_buffer(indio_dev, buffer);
> > +
> > +	indio_dev->modes |= mode_flags;
> > +	indio_dev->setup_ops = setup_ops;
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(iio_device_attach_kfifo_buffer);
> > +
> >  MODULE_LICENSE("GPL");
> > diff --git a/include/linux/iio/kfifo_buf.h b/include/linux/iio/kfifo_buf.h
> > index 764659e01b68..2363a931be14 100644
> > --- a/include/linux/iio/kfifo_buf.h
> > +++ b/include/linux/iio/kfifo_buf.h
> > @@ -11,4 +11,8 @@ void iio_kfifo_free(struct iio_buffer *r);
> >  struct iio_buffer *devm_iio_kfifo_allocate(struct device *dev);
> >  void devm_iio_kfifo_free(struct device *dev, struct iio_buffer *r);
> >  
> > +int iio_device_attach_kfifo_buffer(struct iio_dev *indio_dev,
> > +				   int mode_flags,
> > +				   const struct iio_buffer_setup_ops
> > *setup_ops);
> > +
> >  #endif
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
