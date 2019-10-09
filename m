Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77854D1210
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 17:07:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9144C8795A;
	Wed,  9 Oct 2019 15:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W1gNFilUZWaH; Wed,  9 Oct 2019 15:07:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 24F6587914;
	Wed,  9 Oct 2019 15:07:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C05E1BF371
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2903C869C0
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:07:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Njy-jE9U2boP for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 15:07:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B2737869D2
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 15:07:19 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99EwgEG098048;
 Wed, 9 Oct 2019 15:07:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=TTPcG5X+i9HElpRY3SKqjB6AuUo2nTYFxY8FmsSTCIo=;
 b=ar17h4uQuOUiHI5P9QsUvgQWZSzxuu1I9dQg975oaSFkIZ45BwAJCLfIl6wyoLO/SCGq
 C4dD89SVYFJ+j8E7vDZOZ02+6tm5HrmBnje5K7Mmoe7lJPmxafd7xXkBK1+WRkth8xh1
 CpFlSewKyHgUjhUEdSqH9miNGKFojF0dBOk1fw9oV8AtHuJLFoY7GcJbxViNwtwCKXhZ
 LPdQNn6LeDjV8eoP75luHUJrDkH9+QtDby0U3yxEWTQhGG7lzAT37XcsPLpbII3zXVqS
 IVcDtFVwgPSOJ/DvUHwt4xU1q4RD4mK8fa5YUp9uo5zZ3pHDkR7aGUuoS6Pe9DmB38kc HA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2vek4qn9cp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 15:07:17 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99F0Mrp109480;
 Wed, 9 Oct 2019 15:07:16 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2vh5catuxn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 15:07:16 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x99F7EdJ000305;
 Wed, 9 Oct 2019 15:07:14 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Oct 2019 08:07:13 -0700
Date: Wed, 9 Oct 2019 18:07:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [staging:staging-testing 41/59]
 drivers/staging/wfx/main.c:47:14-21: ERROR: PTR_ERR applied after
 initialization to constant on line 42
Message-ID: <20191009150707.GA20470@kadam>
References: <201910041809.W4MyUT1q%lkp@intel.com> <3767201.AobC1b7GVW@pc-42>
 <21f8b824-2b17-7eaa-b0c4-510e89b798cb@intel.com>
 <3146028.s5zQrzEYB4@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3146028.s5zQrzEYB4@pc-42>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090142
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090142
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "kbuild-all@01.org" <kbuild-all@01.org>, Rong Chen <rong.a.chen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 09, 2019 at 02:21:47PM +0000, Jerome Pouiller wrote:
> On Wednesday 9 October 2019 08:51:10 CEST Rong Chen wrote:
> > On 10/7/19 4:36 PM, Jerome Pouiller wrote:
> > > On Friday 4 October 2019 12:48:32 CEST kbuild test robot wrote:
> > > [...]
> > >>>> drivers/staging/wfx/main.c:47:14-21: ERROR: PTR_ERR applied after initialization to constant on line 42
> > >> vim +47 drivers/staging/wfx/main.c
> > >>
> > >>      30
> > >>      31  struct gpio_desc *wfx_get_gpio(struct device *dev, int override, const char *label)
> > >>      32  {
> > >>      33          struct gpio_desc *ret;
> > >>      34          char label_buf[256];
> > >>      35
> > >>      36          if (override >= 0) {
> > >>      37                  snprintf(label_buf, sizeof(label_buf), "wfx_%s", label);
> > >>      38                  ret = ERR_PTR(devm_gpio_request_one(dev, override, GPIOF_OUT_INIT_LOW, label_buf));
> > >>      39                  if (!ret)
> > >>      40                          ret = gpio_to_desc(override);
> > >>      41          } else if (override == -1) {
> > >>    > 42                  ret = NULL;
> > >>      43          } else {
> > >>      44                  ret = devm_gpiod_get(dev, label, GPIOD_OUT_LOW);
> > >>      45          }
> > >>      46          if (IS_ERR(ret) || !ret) {
> > >>    > 47                  if (!ret || PTR_ERR(ret) == -ENOENT)
> > >>      48                          dev_warn(dev, "gpio %s is not defined\n", label);
> > >>      49                  else
> > >>      50                          dev_warn(dev, "error while requesting gpio %s\n", label);
> > >>      51                  ret = NULL;
> > >>      52          } else {
> > >>      53                  dev_dbg(dev, "using gpio %d for %s\n", desc_to_gpio(ret), label);
> > >>      54          }
> > >>      55          return ret;
> > >>      56  }
> > >>      57
> > > I think that this report is a false positive or I missed something?
> > >
> > Sorry for the inconvenience, but we confirmed that the error first
> > appeared since commit 0096214a59.
> 
> Hi Rong,
> 
> Err... I continue to not understand the meaning of this warning. If
> override != -1 then ret is not constant, isn't?

It's a false positive.  Those happen.  Just ignore it.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
