Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CA810D9DC
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Nov 2019 20:02:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCFFD87E8E;
	Fri, 29 Nov 2019 19:02:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id meG8uuw4hEsO; Fri, 29 Nov 2019 19:02:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A51887E64;
	Fri, 29 Nov 2019 19:02:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA2C31BF2F3
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 19:02:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B6DA986B15
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 19:02:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gC2TeyDeKKja for <devel@linuxdriverproject.org>;
 Fri, 29 Nov 2019 19:02:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 18C0186B11
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 19:02:27 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xATIx7XI022707;
 Fri, 29 Nov 2019 19:02:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=PMSpyAZwm5n49dSwZWbSUza3afbhx07BpmaBJxUA6eY=;
 b=Ah15mlbZc28+/ntfcw2uJeT2TY5X7o46m8gJwAB6hxe8t+zIxqhbH4QGVJ+jfyftyys4
 SodtDo+RPH236douXuWTTMRJPJXm0klYO8BP6PleBT6Pa/R0NAA4M7e2hA2Oq5N0hFO8
 IHOVJdSUHL2zxs21DSL5j1UxMraE0XTjF0yiaUncs98utz4eQeoNtMTbWWUr6yccSD8w
 dHmyIFMj2d6DS/RaImxn3ws0turngLE52pAQpvWLLZn3yLV8J33JUT5cIWGcprh1hKer
 R2sQSyjNjS4qvBDJz9BJefHGUUILYJrUF+7+YfaI3Ginzmbv2sALG/g/dNw8paesBi52 dg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2wevqqwscr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 29 Nov 2019 19:02:22 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xATIrXnY155220;
 Fri, 29 Nov 2019 19:02:21 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2wjh0tccg1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 29 Nov 2019 19:02:21 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xATJ2Ifg023014;
 Fri, 29 Nov 2019 19:02:19 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 29 Nov 2019 11:02:18 -0800
Date: Fri, 29 Nov 2019 22:02:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Subject: Re: [PATCH v3 08/10] clk: clock-wizard: Make the output names unique
Message-ID: <20191129190205.GA3282@kadam>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <d9277db2692bb77a41dfed927cfb791bdcced17d.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <20191128074505.GC1781@kadam>
 <CAKfKVtHpP4j32CNA8ioET=wqYPWtzrQvH-A+4n-pcvj1KZy=fg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKfKVtHpP4j32CNA8ioET=wqYPWtzrQvH-A+4n-pcvj1KZy=fg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9456
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911290163
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9456
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911290164
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
Cc: devel@driverdev.osuosl.org, Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org,
 =?iso-8859-1?Q?S=F6ren?= Brinkmann <soren.brinkmann@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 29, 2019 at 05:37:57PM +0530, Shubhrajyoti Datta wrote:
> On Thu, Nov 28, 2019 at 1:15 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > On Thu, Nov 28, 2019 at 12:06:15PM +0530, shubhrajyoti.datta@gmail.com wrote:
> > > From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> > >
> > > Incase there are more than one instance of the clocking wizard.
> > > And if the output name given is the same then the probe fails.
> > > Fix the same by appending the device name to the output name to
> > > make it unique.
> > >
> > > Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> > > ---
> > >  drivers/clk/clk-xlnx-clock-wizard.c | 13 ++++++++-----
> > >  1 file changed, 8 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
> > > index 75ea745..9993543 100644
> > > --- a/drivers/clk/clk-xlnx-clock-wizard.c
> > > +++ b/drivers/clk/clk-xlnx-clock-wizard.c
> > > @@ -555,6 +555,9 @@ static int clk_wzrd_probe(struct platform_device *pdev)
> > >               ret = -ENOMEM;
> > >               goto err_disable_clk;
> > >       }
> > > +     outputs = of_property_count_strings(np, "clock-output-names");
> > > +     if (outputs == 1)
> > > +             flags = CLK_SET_RATE_PARENT;
> > >       clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor
> > >                       (&pdev->dev, clk_name,
> > >                        __clk_get_name(clk_wzrd->clk_in1),
> > > @@ -566,9 +569,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
> > >               goto err_disable_clk;
> > >       }
> > >
> > > -     outputs = of_property_count_strings(np, "clock-output-names");
> > > -     if (outputs == 1)
> > > -             flags = CLK_SET_RATE_PARENT;
> > >       clk_name = kasprintf(GFP_KERNEL, "%s_mul_div", dev_name(&pdev->dev));
> > >       if (!clk_name) {
> > >               ret = -ENOMEM;
> > > @@ -591,6 +591,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
> > >       /* register div per output */
> > >       for (i = outputs - 1; i >= 0 ; i--) {
> > >               const char *clkout_name;
> > > +             const char *clkout_name_wiz;
> > >
> > >               if (of_property_read_string_index(np, "clock-output-names", i,
> > >                                                 &clkout_name)) {
> > > @@ -599,9 +600,11 @@ static int clk_wzrd_probe(struct platform_device *pdev)
> > >                       ret = -EINVAL;
> > >                       goto err_rm_int_clks;
> > >               }
> > > +             clkout_name_wiz = kasprintf(GFP_KERNEL, "%s_%s",
> > > +                                         dev_name(&pdev->dev), clkout_name);
> >
> > If this kasprintf() crashes then clk_wzrd_register_divf() will fail.

I meant if kasprintf() returns NULL not crashes...  :/

> > But that was a headache to review.  Just add a check for NULL.  We need
> > a kfree() as well.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
