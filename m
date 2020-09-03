Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D634725C825
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Sep 2020 19:39:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2585886C83;
	Thu,  3 Sep 2020 17:39:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rBTvrtb9YQVX; Thu,  3 Sep 2020 17:39:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DD9886C5F;
	Thu,  3 Sep 2020 17:39:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D4CC41BF841
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 17:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D0F7987433
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 17:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x+OE5VJ4jXWL for <devel@linuxdriverproject.org>;
 Thu,  3 Sep 2020 17:38:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 50F5A87431
 for <devel@driverdev.osuosl.org>; Thu,  3 Sep 2020 17:38:59 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 083HcwAO111441;
 Thu, 3 Sep 2020 17:38:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=bo1e34Z7Nb7zD1md32835Hg6Pxb+3lvBG7pK4do84lo=;
 b=qtfigfxtiOf6EcrHjwxeQ1YAxY5/zzMFlX8omYUu5se7i0df6wEMYAm3giDfuLMkd9hc
 owY6DVs/AdcFRHKX8TtXiIFb4YrSpaDFxwWMCMIudk9qpnUWgqreqwY02Ujw+cdEaeqE
 llrC1YgVV82MA1qZ0ucdvxzrOiCqfczHBKxx/jJe1baxwLMsAmFx2pRETwEGnUWGckF1
 PsEchOlDFUcwr41fxmf6KXxuuf4kpWEw7g0y3dglGS66LJDFlDxULWj1g4/DPc5LEfxS
 pbKZWFoK0XZpGFe554pRDFPMmJRIoFmKS0elqMb5B6ufGSlOBMmA4yytB76MZOKxpeQ/ Wg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 337eera8ua-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 03 Sep 2020 17:38:58 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 083HVojn014675;
 Thu, 3 Sep 2020 17:38:53 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 3380y2b7us-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 03 Sep 2020 17:38:53 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 083HcqMR007784;
 Thu, 3 Sep 2020 17:38:52 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 03 Sep 2020 10:38:51 -0700
Date: Thu, 3 Sep 2020 20:38:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Alex Dewar <alex.dewar90@gmail.com>
Subject: Re: [PATCH] staging: media: atomisp: Fix error path in lm3554_probe()
Message-ID: <20200903173843.GF8299@kadam>
References: <20200902184207.479525-1-alex.dewar90@gmail.com>
 <20200903121134.GB8299@kadam>
 <20200903154841.w5rppm325jobimud@medion>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200903154841.w5rppm325jobimud@medion>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9733
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0 phishscore=0
 malwarescore=0 bulkscore=0 mlxscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009030163
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9733
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 adultscore=0 spamscore=0 mlxscore=0
 phishscore=0 impostorscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009030164
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Alan Cox <alan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 03, 2020 at 04:48:41PM +0100, Alex Dewar wrote:
> Good point about the timer!
> 
> > >  
> > > -	err = lm3554_gpio_init(client);
> > > -	if (err) {
> > > +	ret = lm3554_gpio_init(client);
> > > +	if (ret) {
> > >  		dev_err(&client->dev, "gpio request/direction_output fail");
> > > -		goto fail2;
> > > +		goto err_cleanup_entity;
> > >  	}
> > >  	return atomisp_register_i2c_module(&flash->sd, NULL, LED_FLASH);
> > 
> > If atomisp_register_i2c_module() fails then we need to call
> > lm3554_gpio_uninit(client) and do other cleanup.
> 
> I'm probably showing my ignorance here, but I can't see what cleanup we
> need. Inside lm3554_gpio_init we have:
> 
> 	ret = gpiod_direction_output(pdata->gpio_reset, 0);
> 	if (ret < 0)
> 		return ret;
> 	dev_info(&client->dev, "flash led reset successfully\n");
> 
> 	if (!pdata->gpio_strobe)
> 		return -EINVAL;
> 
> 	ret = gpiod_direction_output(pdata->gpio_strobe, 0);
> 	if (ret < 0)
> 		return ret;
> 
> I'm not sure how you "undo" a call to gpiod_direction_output, but I'm
> thinking you won't need to do anything because it should be ok to leave
> a gpio to output 0... right?

You're right.  I wonder if there is really any need for the
lm3554_gpio_uninit() function at all?  It's basically the same as
lm3554_gpio_init() except for the order of function calls.  Probably
we could just rename lm3554_gpio_init() to something like
lm3554_gpio_set_default() and use it in both the probe() and remove
functions()...

But I don't know the code and can't test it so let's leave that for
another day.

We still do need to clean up if atomisp_register_i2c_module() fails
though, and the timer as well so could you resend a v2?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
