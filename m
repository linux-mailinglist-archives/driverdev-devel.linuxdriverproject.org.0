Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBEE1C3269
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 May 2020 08:01:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19CCF888A9;
	Mon,  4 May 2020 05:52:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2pM7SCNioU4B; Mon,  4 May 2020 05:52:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72A9E888AE;
	Mon,  4 May 2020 05:52:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 823BE1BF42E
 for <devel@linuxdriverproject.org>; Mon,  4 May 2020 05:52:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6F61D22C31
 for <devel@linuxdriverproject.org>; Mon,  4 May 2020 05:52:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZzFPr4YxUTkj for <devel@linuxdriverproject.org>;
 Mon,  4 May 2020 05:52:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 72A541FE41
 for <devel@driverdev.osuosl.org>; Mon,  4 May 2020 05:52:38 +0000 (UTC)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0445qbUE008397; Mon, 4 May 2020 01:52:37 -0400
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2049.outbound.protection.outlook.com [104.47.66.49])
 by mx0a-00128a01.pphosted.com with ESMTP id 30s5s5uy9u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 04 May 2020 01:52:37 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ABb6QYzymCmWerGbyRmc3I8fyG4mhTIRFekVHtaxZC8k8LqMAuPM5G/n4T5A8ynVx8E/VYcnMdhOSJwBUqVeaJcisVM2gCJKZgEPuvP5LGWaSK+6bNS/t3USEwvKCttwAlUXcPOHihp1V13SVUITUSJ5AdOyIVtckVabe0hUoEPHR14mLRo+dpdZTQYHqBaCMX7mEdAfbNAUwushWkWgPWqxVOFMjkOHnyFrtq6qN7otiHZnRkq+4bruxE8uoYuIZfJpx28XrI/OyUDYe2b0EZM7Gj91rbtlXrfNS17yxY43FZzm+FrpXt3QD1pWUp8Yq+smnTTuuIdggZtzjPn4FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3k9wlOc2lxzVbqRx9XMiOoZtQz/SM9DQvjSn+rp7dFI=;
 b=SShJTJSA5qPpu9MrFYo3dOss+5i0Z7wPsCtsL0Gxs/qHLIiyrvtDUGZOtELJaAtLAiJjI9DLZa8GOTkHVV09wmFqbvNOt5MYpwKD4ZBXYee8DU/2NMxh2nS5OlzV7V/C0o9OpMF5Q+CMtvz6pCJ0nfA2IlP9ajzXX8vYtofC4nbVHzOX+1Y5A40l2ZgYb5PH/x1DSp48o1ZcPSlQPqvz+5/3liTeijICGfkvUWKIjlCducQVMpz+E9p6BjaBwAYrwYMCyYXAmFKkAaS3SawVNr462ObYRuxW4R+QbvwN1tm1Mutb6NgKAcQu+TR8HPltT1RFLrz130Va9OthzbpODg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3k9wlOc2lxzVbqRx9XMiOoZtQz/SM9DQvjSn+rp7dFI=;
 b=KI6DPGAme2eiJ+FV9KFx4ffbtIeRkAucwWym6+1CTC90tuTUfLNJdNxuNW9aXTkmIvaapKmBAZTzg80nizfo3Woc/8bxoOc6OJZ9FEzL3SF5Hn1mVWVbhD947ZCXIN/kGIzjdiyuPTfsUbK53O2BqNBHODaiEB0NqC06/zrXxtA=
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM6PR03MB3546.namprd03.prod.outlook.com (2603:10b6:5:b9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Mon, 4 May
 2020 05:52:35 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::40df:9aa4:c85a:a020]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::40df:9aa4:c85a:a020%4]) with mapi id 15.20.2958.030; Mon, 4 May 2020
 05:52:35 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "jic23@kernel.org" <jic23@kernel.org>
Subject: Re: [PATCH] staging: iio: ad5933: rework probe to use devm_ function
 variants
Thread-Topic: [PATCH] staging: iio: ad5933: rework probe to use devm_ function
 variants
Thread-Index: AQHWHT/LBHaKQyj2SEOHWsNJccdzo6iVI60AgAJSPIA=
Date: Mon, 4 May 2020 05:52:35 +0000
Message-ID: <8695e337ca71351cac2f262b0104a1411c173417.camel@analog.com>
References: <20200428093128.60747-1-alexandru.ardelean@analog.com>
 <20200502192542.63cc25a2@archlinux>
In-Reply-To: <20200502192542.63cc25a2@archlinux>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=analog.com;
x-originating-ip: [188.27.130.47]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4e848913-75bf-47f5-9c8f-08d7efef5831
x-ms-traffictypediagnostic: DM6PR03MB3546:
x-microsoft-antispam-prvs: <DM6PR03MB354624B2DC884D2FB995426CF9A60@DM6PR03MB3546.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03932714EB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CjMsmuNQOOY0P4YMb1Ft7FlNZJzHZfM5bDb/D84JhZVUo/EtGyDcSURwjQLP4hdZCi3UEZzwW/2ZSQpBJscW/9YUBSPciykKSVzS6NYrACxlNIOMZnUVJbsWkyggT9XXZMvdI7OKflw7l++SvTFa6KCa7tJxV9Fsf4hzE9EsdnbbuAVvgDrN1IeOnsmLWavkT0jcVmwwHc1wvP766rHwYIBThS43CXaWG7GuyCMMQeaYmQI856qQVylijQAqbHcNLZjpQXnRTsxZBmexgraPoXfZvih4R1Y6ldSJTYNMoYMS8oIMJ5kwJBmQKwiWzRxMwN5VLdmbTx2h1l78ePQ3qli3WkyY405vlLfCeCAOGIv1zL2BaaAO+0qmK3owYXocouebzir9KaiIT7EcN1zRacen8Rxe5thtV6N4tUusUrmajA6SvASQzccsG313+cCy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB4411.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(39850400004)(136003)(366004)(376002)(6916009)(91956017)(86362001)(5660300002)(71200400001)(316002)(6506007)(66946007)(4326008)(66476007)(54906003)(76116006)(66446008)(64756008)(2616005)(2906002)(66556008)(186003)(6486002)(478600001)(36756003)(26005)(8676002)(6512007)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ZSKYJC+qXuZY3GXk1WBN/O7DaaBTdxcLAf2PNbTs65sf+UD0xkH6NuRapouVSUMf9fkTqYkQRyT6gJ2qhXrJQsXe5L6z5sdgodRnsJs2896OD05xWr1RyDJHGOebGZ2X58UCZJ/xf6YXb3X+RkWVLj+H57+HdajxR1vA6bxVaA/Fmwv2zsy0LWk67PnPS5G7vIKQUXXNUKPd1Tm9kWLKFzj2cs4pKbuOugU0gurKYf471UcftsDEp3rKanPBmdwQ2UwhIA5MP6DdDLoKQAbZO8BUVihY8FdneAYqLGZuh1wqQa07rhDWsySeXDw2vIXN5iez6rkdY1gvD2+fre3vZUP+5lnYtsAnA+kP7tRW7G6TaQibe6j9qedqACk+lmdmnLHessj/Nsx7UAFpA3Ddg36C2SgnaR2ubfnbDSUTgw7TT9XhTSIzPhJUTFMzXfJ1blVtJWr69IoRYEqVfyGEQOSObbROC3m7BskKcha4/SxZ8fyzxrMaGRWGPMZXL0LWEaP6wkB1rDjShmARbn17CQF6oAg8tFCTf42V3VNW53YREpDZvKEJ9UrKFsw7T5js6MgRu+OjCvGYWHDcdC61n6TP6mVlDy1/oYcqtb6U239pJO+LUzI9XFY44/6XEsiXFNIMr8BbIdv3UAD2QVR6/AZwTtqKrqvONkCn9Y1rgc7SVut+xAn1d/eYq77oyLe/b6uHKh+3psT+jsR96yQ0WSC6vNf4BL0SCEYtEshmniRC2dNMfBid3C5j+dM38JDAtF4n9aBkMa6A2atlB0VAUs1j9cb2EAGpu+LuO1y8QCI=
x-ms-exchange-transport-forked: True
Content-ID: <B5624C27EFBCAD49A86D016A3CE39C0C@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e848913-75bf-47f5-9c8f-08d7efef5831
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2020 05:52:35.1053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /yoWu3OFq1In/VmjnPdnZX7zswEIezh/m7V4UzoC2q00mH3kQEkAxX58XnQvPwiprZ9Co3JgLTmpQzLFVtmVTPRmqZTQl67fq4VgrghbDiI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB3546
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-04_02:2020-05-01,
 2020-05-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 suspectscore=0 mlxlogscore=999 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005040050
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
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2020-05-02 at 19:25 +0100, Jonathan Cameron wrote:
> On Tue, 28 Apr 2020 12:31:28 +0300
> Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> 
> > This change cleans up the driver's probe function to use only devm_
> > function variants. This also gets rid of the remove function and moves the
> > clock & regulator de-initializations to the 'ad5933_cleanup()' callback.
> > 
> > Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> 
> Basic rule of thumb. Whatever you register with devm_add_action_or_reset
> should only cleanup one one thing done in the probe path.
> There is almost always a race if you do more than one bit of cleanup
> per such callback + it's harder to review as it fails the 'obviously correct
> test'.

I did not know that.
That idea missed me up until now.

Will re-spin.
Thanks
Alex

> 
> Jonathan
> 
> > ---
> >  .../staging/iio/impedance-analyzer/ad5933.c   | 59 ++++++++-----------
> >  1 file changed, 23 insertions(+), 36 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c
> > b/drivers/staging/iio/impedance-analyzer/ad5933.c
> > index af0bcf95ee8a..06a6dcd7883b 100644
> > --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
> > +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
> > @@ -602,11 +602,12 @@ static const struct iio_buffer_setup_ops
> > ad5933_ring_setup_ops = {
> >  	.postdisable = ad5933_ring_postdisable,
> >  };
> >  
> > -static int ad5933_register_ring_funcs_and_init(struct iio_dev *indio_dev)
> > +static int ad5933_register_ring_funcs_and_init(struct device *dev,
> > +					       struct iio_dev *indio_dev)
> >  {
> >  	struct iio_buffer *buffer;
> >  
> > -	buffer = iio_kfifo_allocate();
> > +	buffer = devm_iio_kfifo_allocate(dev);
> >  	if (!buffer)
> >  		return -ENOMEM;
> >  
> > @@ -676,6 +677,14 @@ static void ad5933_work(struct work_struct *work)
> >  	}
> >  }
> >  
> > +static void ad5933_cleanup(void *data)
> > +{
> > +	struct ad5933_state *st = data;
> > +
> > +	clk_disable_unprepare(st->mclk);
> > +	regulator_disable(st->reg);
> 
> Please do two separate callbacks so that these can be handled
> in the correct places.  I.e. you do something then immediately
> register the handler to undo it.
> 
> Currently you can end up disabling a clock you haven't enabled
> (which I am fairly sure will give you an error message).
> 
> > +}
> > +
> >  static int ad5933_probe(struct i2c_client *client,
> >  			const struct i2c_device_id *id)
> >  {
> > @@ -703,23 +712,28 @@ static int ad5933_probe(struct i2c_client *client,
> >  		dev_err(&client->dev, "Failed to enable specified VDD
> > supply\n");
> >  		return ret;
> >  	}
> > +
> > +	ret = devm_add_action_or_reset(&client->dev, ad5933_cleanup, st);
> > +	if (ret)
> > +		return ret;
> > +
> >  	ret = regulator_get_voltage(st->reg);
> >  
> >  	if (ret < 0)
> > -		goto error_disable_reg;
> > +		return ret;
> >  
> >  	st->vref_mv = ret / 1000;
> >  
> >  	st->mclk = devm_clk_get(&client->dev, "mclk");
> >  	if (IS_ERR(st->mclk) && PTR_ERR(st->mclk) != -ENOENT) {
> >  		ret = PTR_ERR(st->mclk);
> > -		goto error_disable_reg;
> > +		return ret;
> >  	}
> >  
> >  	if (!IS_ERR(st->mclk)) {
> >  		ret = clk_prepare_enable(st->mclk);
> >  		if (ret < 0)
> > -			goto error_disable_reg;
> > +			return ret;
> >  		ext_clk_hz = clk_get_rate(st->mclk);
> >  	}
> >  
> > @@ -742,41 +756,15 @@ static int ad5933_probe(struct i2c_client *client,
> >  	indio_dev->channels = ad5933_channels;
> >  	indio_dev->num_channels = ARRAY_SIZE(ad5933_channels);
> >  
> > -	ret = ad5933_register_ring_funcs_and_init(indio_dev);
> > +	ret = ad5933_register_ring_funcs_and_init(&client->dev, indio_dev);
> >  	if (ret)
> > -		goto error_disable_mclk;
> > +		return ret;
> >  
> >  	ret = ad5933_setup(st);
> >  	if (ret)
> > -		goto error_unreg_ring;
> > -
> > -	ret = iio_device_register(indio_dev);
> > -	if (ret)
> > -		goto error_unreg_ring;
> > -
> > -	return 0;
> > -
> > -error_unreg_ring:
> > -	iio_kfifo_free(indio_dev->buffer);
> > -error_disable_mclk:
> > -	clk_disable_unprepare(st->mclk);
> > -error_disable_reg:
> > -	regulator_disable(st->reg);
> > -
> > -	return ret;
> > -}
> > -
> > -static int ad5933_remove(struct i2c_client *client)
> > -{
> > -	struct iio_dev *indio_dev = i2c_get_clientdata(client);
> > -	struct ad5933_state *st = iio_priv(indio_dev);
> > -
> > -	iio_device_unregister(indio_dev);
> > -	iio_kfifo_free(indio_dev->buffer);
> > -	regulator_disable(st->reg);
> > -	clk_disable_unprepare(st->mclk);
> > +		return ret;
> >  
> > -	return 0;
> > +	return devm_iio_device_register(&client->dev, indio_dev);
> >  }
> >  
> >  static const struct i2c_device_id ad5933_id[] = {
> > @@ -801,7 +789,6 @@ static struct i2c_driver ad5933_driver = {
> >  		.of_match_table = ad5933_of_match,
> >  	},
> >  	.probe = ad5933_probe,
> > -	.remove = ad5933_remove,
> >  	.id_table = ad5933_id,
> >  };
> >  module_i2c_driver(ad5933_driver);
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
