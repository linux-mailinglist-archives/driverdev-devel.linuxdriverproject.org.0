Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 038152768D7
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Sep 2020 08:23:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ECE79874C4;
	Thu, 24 Sep 2020 06:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UME0P8K4smWx; Thu, 24 Sep 2020 06:23:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52E0D87463;
	Thu, 24 Sep 2020 06:23:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2011B1BF85D
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 06:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1C5408698D
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 06:23:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1c0-kz6Adt7l for <devel@linuxdriverproject.org>;
 Thu, 24 Sep 2020 06:23:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2064.outbound.protection.outlook.com [40.107.243.64])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D835286969
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 06:23:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kaIzW7I4pA8et9YemuZFbGjOlpQmznCBNHpeBUuyc9hM2usC80NrtnBkq37gJ+LAjawSIjZFX1PT+XgMaKYxHzpy203F0DM3cf/VdWVG54+33nmYxF/Pz31ojXBf1I7/P9karK5L8keRiXyWb30z6+EnqhKkkQjOf6tGVHtCf6sOXv0xBqFjZ2Dv3ojZch6mOk+f+DgzxcwGtOmPEF25aV5yn/qJaLkmnHnq4lHDHzvkki4mbEnsAt/KO3BgVWmnIfYx5pD0K6TN4i2jbIk4S+btGLUfqsJob7W3xZ1Aa3jDBs5io47qZlaFOqZVwQEtLLa53AufwDs/Fmypk8fzlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=20cgK2nF83bMWnXKIDliznycd7AmNID2AR2OUIDxoPo=;
 b=lAccIMdVMNmT4rBJSuhOauLfIxMREFvUYS51nsrLcShuZw1Izt9CZAnlpHNiTQYD/fd6/UPjoY3Mn7oBHVUwKHm/CvhW8ZyWYLa84xbb5LnOURlsToRF/nQAkiD+WnCRhMm6TDweZCeHKXshJCFgUnieF4cj8bj1KdOC1AU+gV58gmMic77ASVwkn83cXDaib2bRJpwZZsSWHCowk+2AhhDnGMmzZq8Juzc5FjDLTb9sz6eeVohEQJJPDVzv5o7HWZd/cIkpRScT1rghs+ZZlbsPUX7fyGd8rWpiJn+joV/nYUilIIYfOrG8xLs2W1uXrmxCKq72HY9clYT2QCucuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=20cgK2nF83bMWnXKIDliznycd7AmNID2AR2OUIDxoPo=;
 b=YtB/+3oI0WiPL5nD1xZLC2VoRWUc6Ci7ZCsZDXS4pBjP+aOb+eoiaZwiB8g3qOqfilfBFiLTcB0Ly7kI2Ns0Z6NxS3agIvhIhiydxDXdZihMFM4mJb21bSTqBDcBvqccoSxvqycCYYtaJseCSlSBeyaBgvz7WX03DbO1HdbY3Z4=
Received: from BYAPR02MB5863.namprd02.prod.outlook.com (2603:10b6:a03:128::14)
 by BYAPR02MB3927.namprd02.prod.outlook.com (2603:10b6:a02:f3::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.20; Thu, 24 Sep
 2020 06:23:12 +0000
Received: from BYAPR02MB5863.namprd02.prod.outlook.com
 ([fe80::7dba:90:1155:1bd]) by BYAPR02MB5863.namprd02.prod.outlook.com
 ([fe80::7dba:90:1155:1bd%3]) with mapi id 15.20.3391.024; Thu, 24 Sep 2020
 06:23:12 +0000
From: Shubhrajyoti Datta <shubhraj@xilinx.com>
To: Stephen Boyd <sboyd@kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH v6 5/8] clk: clock-wizard: Add support for fractional
 support
Thread-Topic: [PATCH v6 5/8] clk: clock-wizard: Add support for fractional
 support
Thread-Index: AQHWfUDOGI6eaIPWs0K4G5m1xbgT36lzvsEAgAJmejA=
Date: Thu, 24 Sep 2020 06:23:11 +0000
Message-ID: <BYAPR02MB5863905CA4E7F129C9E2FF3FAA390@BYAPR02MB5863.namprd02.prod.outlook.com>
References: <1598621996-31040-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <1598621996-31040-6-git-send-email-shubhrajyoti.datta@xilinx.com>
 <160072305811.310579.18192761455478284239@swboyd.mtv.corp.google.com>
In-Reply-To: <160072305811.310579.18192761455478284239@swboyd.mtv.corp.google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=xilinx.com;
x-originating-ip: [124.123.161.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1ea99489-da37-49b2-6060-08d860525017
x-ms-traffictypediagnostic: BYAPR02MB3927:
x-microsoft-antispam-prvs: <BYAPR02MB39277596C931064984658F8FAA390@BYAPR02MB3927.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9yQb8aCpLln+y1+40ti7TR7OZ5K1e/AygTCFs7v/LNyaftQr55iB/YpA/RhDS5hBgSgzurIMIMZUFJSNk1yOJqKjQ73mPfFamP1kRSnE9kmerCpB3l2mtMdS5UlByL8fHaUT4OSMp8dko5MFJQd2Enfv4rVLkVqYRtFpXeSOqBU4ny8usO2s6tlll+h4eIznbFwCz57ulAKrKbtVZO1zdKl9rigUKldcJf448OyKQtrRiS9iKoHi7NkBhArnzakLGl/18VdKpiyny2nVxvpgf0xgk+wfErcaf47T9tO6BCRCkCkcFxpH89syL5JKI84ilKV9rHLktycRo5hS7XdnHw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR02MB5863.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(346002)(136003)(376002)(39860400002)(4326008)(186003)(76116006)(86362001)(71200400001)(66446008)(478600001)(52536014)(26005)(55016002)(9686003)(66946007)(33656002)(53546011)(6506007)(64756008)(66476007)(7696005)(83380400001)(8936002)(66556008)(54906003)(316002)(5660300002)(8676002)(2906002)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: +RB7KKOqe1z9m7txposmGnLt1B0hIS9GDnt4SdFnDgzZNcBNO4yvFg0Wys90Yv9fQD6buBTYwtGerok4Ok7b4eRCI5N7dX0l8qUL6URmGyNpqZ/AABasDTuieV87f6MUn4Aks3GM1fpyUPlhep7vLxRDqiiIAXHFWaGTrQi74Sotado7NNm4nr4c82X+ifecIJBK5SPhHN+qY3DNFZmdo7OMzy7q23676rM9SpJyLsxmYOaNpvlSq9OpgOHUCPJ/bnlNhRHLgefia4yIbjZpTKzGsI+HHi9ZISL+9tS06dlINPClbpokvKUjabTAE+PYB3cTc5mIvfKoF3OUHaFLS1mznqeUaCJL6m/Z6aI4fuGzjarWHos6wsOzWP7I2idwiLXfrYl8/nqT1CkerMe9ZTPYX+yJQ7GJOcLq+2AYDb/JpwOtK6ERFII9/k/toBUONt+fzNZU+/p84PqHEZK2GCGC4R0OLXae2mMrCgCy4NWhPtMu1BzZQ4Geb3rkgsIJLn0FT8uExopgTwCrrOluiN6UQ4vkvftFFyjVoS+VGojbh1v7JXTO5cmxhTcCOR59jtS2mkOCJW82qM49Fc+c+KEBCJIoyXHDl0PABqrgI1GoIpbpGQMPgXPsl+tPLHUnD6MNdKqf5ipmYgzn2f3Hcw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR02MB5863.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ea99489-da37-49b2-6060-08d860525017
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2020 06:23:11.8090 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oy+IftFpu5HsT6wBJEZxlHfmcOo7nlalTzTZrAAsZBhGmdZt/lR3sG6Wuea51WSllaWDw5qa55UWSzEJEBcFqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB3927
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi ,
Thanks for the review.

> -----Original Message-----
> From: Stephen Boyd <sboyd@kernel.org>
> Sent: Tuesday, September 22, 2020 2:48 AM
> To: Shubhrajyoti Datta <shubhraj@xilinx.com>; linux-clk@vger.kernel.org
> Cc: devicetree@vger.kernel.org; linux-kernel@vger.kernel.org;
> devel@driverdev.osuosl.org; robh+dt@kernel.org;
> gregkh@linuxfoundation.org; mturquette@baylibre.com; Shubhrajyoti
> Datta <shubhraj@xilinx.com>
> Subject: Re: [PATCH v6 5/8] clk: clock-wizard: Add support for fractional
> support
> 
> Quoting Shubhrajyoti Datta (2020-08-28 06:39:53)
> > Currently the set rate granularity is to integral divisors.
> > Add support for the fractional divisors.
> > Only the first output0 is fractional in the hardware.
> >
> > Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> Getting closer.
> 
> > diff --git a/drivers/clk/clk-xlnx-clock-wizard.c
> > b/drivers/clk/clk-xlnx-clock-wizard.c
> > index 8dfcec8..1af59a4 100644
> > --- a/drivers/clk/clk-xlnx-clock-wizard.c
> > +++ b/drivers/clk/clk-xlnx-clock-wizard.c
> > @@ -185,6 +191,134 @@ static const struct clk_ops
> clk_wzrd_clk_divider_ops = {
> >         .recalc_rate = clk_wzrd_recalc_rate,  };
> >
> > +static unsigned long clk_wzrd_recalc_ratef(struct clk_hw *hw,
> > +                                          unsigned long parent_rate)
> > +{
> > +       unsigned int val;
> > +       u32 div, frac;
> > +       struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
> > +       void __iomem *div_addr = divider->base + divider->offset;
> > +
> > +       val = readl(div_addr);
> > +       div = val & div_mask(divider->width);
> > +       frac = (val >> WZRD_CLKOUT_FRAC_SHIFT) &
> > + WZRD_CLKOUT_FRAC_MASK;
> > +
> > +       return ((parent_rate * 1000) / ((div * 1000) + frac));
> 
> Please remove extra parenthesis. And is this mult_frac()?
> 
Will fix
> > +}
> > +
> > +static int clk_wzrd_dynamic_reconfig_f(struct clk_hw *hw, unsigned long
> rate,
> > +                                      unsigned long parent_rate) {
> > +       int err;
> > +       u32 value, pre;
> > +       unsigned long rate_div, f, clockout0_div;
> > +       struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
> > +       void __iomem *div_addr = divider->base + divider->offset;
> > +
> > +       rate_div = ((parent_rate * 1000) / rate);
> > +       clockout0_div = rate_div / 1000;
> > +
> > +       pre = DIV_ROUND_CLOSEST((parent_rate * 1000), rate);
> > +       f = (u32)(pre - (clockout0_div * 1000));
> > +       f = f & WZRD_CLKOUT_FRAC_MASK;
> > +
> > +       value = ((f << WZRD_CLKOUT_DIVIDE_WIDTH) | (clockout0_div &
> > +                       WZRD_CLKOUT_DIVIDE_MASK));
> 
> Please split this to multiple lines.
Will fix
> 
> > +
> > +       /* Set divisor and clear phase offset */
> > +       writel(value, div_addr);
> > +       writel(0x0, div_addr + WZRD_DR_DIV_TO_PHASE_OFFSET);
> > +
> > +       /* Check status register */
> > +       err= readl_poll_timeout(divider->base +
> WZRD_DR_STATUS_REG_OFFSET, value,
> > +                               value & WZRD_DR_LOCK_BIT_MASK,
> > +                               WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
> > +       if (err)
> > +               return err;
> > +
> > +       /* Initiate reconfiguration */
> > +       writel(WZRD_DR_BEGIN_DYNA_RECONF,
> > +              divider->base + WZRD_DR_INIT_REG_OFFSET);
> > +
> > +       /* Check status register */
> > +       err= readl_poll_timeout(divider->base +
> WZRD_DR_STATUS_REG_OFFSET, value,
> > +                               value & WZRD_DR_LOCK_BIT_MASK,
> > +                               WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
> > +
> > +       return err;
> 
> Just return readl_poll_timeout() please.
Will fix
> 
> > +}
> > +
> > +static long clk_wzrd_round_rate_f(struct clk_hw *hw, unsigned long
> rate,
> > +                                 unsigned long *prate) {
> > +       return rate;
> 
> Can every rate be supported? This function is supposed to tell the clk
> framework what rate will be achieved if we call clk_set_rate() with 'rate'
> passed to this function. Almost always returning 'rate' is not the case.
> 

We can support rate upto 3 decimal places to prevent truncation here we are 
Returning rate.
> >
> > +
> > +static const struct clk_ops clk_wzrd_clk_divider_ops_f = {
> > +       .round_rate = clk_wzrd_round_rate_f,
> > +       .set_rate = clk_wzrd_dynamic_reconfig_f,
> > +       .recalc_rate = clk_wzrd_recalc_ratef, };
> > +
> > +static struct clk *clk_wzrd_register_divf(struct device *dev,
> > +                                         const char *name,
> > +                                         const char *parent_name,
> > +                                         unsigned long flags,
> > +                                         void __iomem *base, u16 offset,
> > +                                         u8 shift, u8 width,
> > +                                         u8 clk_divider_flags,
> > +                                         const struct clk_div_table *table,
> > +                                         spinlock_t *lock) {
> > +       struct clk_wzrd_divider *div;
> > +       struct clk_hw *hw;
> > +       struct clk_init_data init;
> > +       int ret;
> > +
> > +       if (clk_divider_flags & CLK_DIVIDER_HIWORD_MASK) {
> 
> Is this used? It's a rockchip specific flag mostly so probably not?
> 
> > +               if (width + shift > 16) {
> > +                       pr_warn("divider value exceeds LOWORD field\n");
> > +                       return ERR_PTR(-EINVAL);
> > +               }
> > +       }
> > +
> > +       /* allocate the divider */
> 
> Please remove useless comments like this.
Will fix
> 
> > +       div = kzalloc(sizeof(*div), GFP_KERNEL);
> > +       if (!div)
> > +               return ERR_PTR(-ENOMEM);
> > +
> > +       init.name = name;
> > +
> > +       if (clk_divider_flags & CLK_DIVIDER_READ_ONLY)
> 
> Is this flag used?
Will fix
> 
> > +               init.ops = &clk_divider_ro_ops;
> > +       else
> > +               init.ops = &clk_wzrd_clk_divider_ops_f;
> > +
> > +       init.flags = flags;
> > +       init.parent_names = (parent_name ? &parent_name : NULL);
> > +       init.num_parents = (parent_name ? 1 : 0);
> 
> Do you have cases where there isn't a parent? Hopefully not, so this can be
> simplified.
> 
Will fix
> >
> > +       /* struct clk_divider assignments */
> 
> Drop this comment?
Will fix
> 
> > +       div->base = base;
> > +       div->offset = offset;
> > +       div->shift = shift;
> > +       div->width = width;
> > +       div->flags = clk_divider_flags;
> > +       div->lock = lock;
> > +       div->hw.init = &init;
> > +       div->table = table;
> > +
> > +       /* register the clock */
> 
> Drop this comment?
Will fix
> 
> > +       hw = &div->hw;
> > +       ret = clk_hw_register(dev, hw);
> 
> Any reason we can't use devm_clk_hw_register() here?
> 
Will do
> > +       if (ret) {
> > +               kfree(div);
> > +               return ERR_PTR(ret);
> > +       }
> > +
> > +       return hw->clk;
> > +}
> > +
> >  static struct clk *clk_wzrd_register_divider(struct device *dev,
> >                                              const char *name,
> >                                              const char *parent_name,
> > @@ -355,17 +489,13 @@ static int clk_wzrd_probe(struct
> platform_device *pdev)
> >                 goto err_disable_clk;
> >         }
> >
> > -       /* we don't support fractional div/mul yet */
> > -       reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
> > -                   WZRD_CLKFBOUT_FRAC_EN;
> > -       reg |= readl(clk_wzrd->base + WZRD_CLK_CFG_REG(2)) &
> > -                    WZRD_CLKOUT0_FRAC_EN;
> > -       if (reg)
> > -               dev_warn(&pdev->dev, "fractional div/mul not supported\n");
> > -
> >         /* register multiplier */
> >         reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
> >                      WZRD_CLKFBOUT_MULT_MASK) >>
> > WZRD_CLKFBOUT_MULT_SHIFT;
> > +       reg_f = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
> > +                    WZRD_CLKFBOUT_FRAC_MASK) >>
> > + WZRD_CLKFBOUT_FRAC_SHIFT;
> 
> Use two lines please. Read into variable on one line, shift on another.
> 
Will fix
> > +
> > +       mult = ((reg * 1000) + reg_f);
> 
> Please remove extra parenthesis.
> 
> >         clk_name = kasprintf(GFP_KERNEL, "%s_mul", dev_name(&pdev-
> >dev));
> >         if (!clk_name) {
> >                 ret = -ENOMEM;
> > @@ -413,8 +543,18 @@ static int clk_wzrd_probe(struct platform_device
> *pdev)
> >                         ret = -EINVAL;
> >                         goto err_rm_int_clks;
> >                 }
> > -               clk_wzrd->clkout[i] = clk_wzrd_register_divider(&pdev->dev,
> > -                                                               clkout_name,
> > +               if (!i)
> > +                       clk_wzrd->clkout[i] = clk_wzrd_register_divf
> > +                               (&pdev->dev, clkout_name,
> > +                               clk_name, 0,
> > +                               clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
> > +                               WZRD_CLKOUT_DIVIDE_SHIFT,
> > +                               WZRD_CLKOUT_DIVIDE_WIDTH,
> > +                               CLK_DIVIDER_ONE_BASED |
> CLK_DIVIDER_ALLOW_ZERO,
> > +                               NULL, &clkwzrd_lock);
> > +               else
> > +                       clk_wzrd->clkout[i] = clk_wzrd_register_divider
> > +                               (&pdev->dev, clkout_name,
> >                                 clk_name, 0,
> >                                 clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
> >                                 WZRD_CLKOUT_DIVIDE_SHIFT,
> >
> 
> I wonder if a do-while loop with flags set to ONE_BASED and ALLOW_ZERO
> could work and then flags gets overwritten to be just DIVIDE_SHIFT? Then
> we don't have to duplicate the registration line.

I did not understand this comment in one case I am registering  for the fractional operations
In another we are using the integral operations
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
