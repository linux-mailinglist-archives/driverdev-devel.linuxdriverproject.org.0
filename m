Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E082B7C24
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Nov 2020 12:12:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71D918684D;
	Wed, 18 Nov 2020 11:12:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SKZ9fhMtquen; Wed, 18 Nov 2020 11:12:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BFDF86819;
	Wed, 18 Nov 2020 11:12:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B12D91BF42E
 for <devel@linuxdriverproject.org>; Wed, 18 Nov 2020 11:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ADC122041A
 for <devel@linuxdriverproject.org>; Wed, 18 Nov 2020 11:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id stTkpZ+qgX9l for <devel@linuxdriverproject.org>;
 Wed, 18 Nov 2020 11:12:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by silver.osuosl.org (Postfix) with ESMTPS id 6DB85203DA
 for <devel@driverdev.osuosl.org>; Wed, 18 Nov 2020 11:12:36 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AIBAdfY099923;
 Wed, 18 Nov 2020 11:12:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=3rp1ngSg0OMLf4tSCce9YVXlF4JBPSDWXQ2Tkwdn2Pg=;
 b=NKmwYfOm5tXiV5ZArzd/GDbefGbZ3JKD963oGEKPQOwRnk84O87dwSPL3r/qT1xkEd7c
 OIfpeqm4Sm6bLyXz/UuQ+xAOb77yeei1Eg27QgC2pbi1AASXmOmnj+l03TI+cHOUlzL7
 1KkKJMVJ0hZMF1QT5Ky64HioxC7qhYt07KTGDcFEDYqMaUdlb6NWx/np04Ej8bHhTqhk
 eNqJcbMdnHgQlc7cmTn4OE0ElXsrG8T+Io6LKALo+tE+rbxMFCsX4SfqwVt058QC/BOX
 oKuLuNQnauCRNZVhHfbbFgl3yVYzWw4VaheRbmDYCgokqhsuTJ+CEmA0Dm3KsnmQiaFq WQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 34t4rayn93-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 18 Nov 2020 11:12:34 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AIB9UNn090022;
 Wed, 18 Nov 2020 11:12:33 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 34ts0s65aq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Nov 2020 11:12:33 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0AIBCVY5021936;
 Wed, 18 Nov 2020 11:12:31 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 18 Nov 2020 03:12:30 -0800
Date: Wed, 18 Nov 2020 14:12:24 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Wang Hai <wanghai38@huawei.com>
Subject: Re: [PATCH] staging: mfd: hi6421-spmi-pmic: fix error return code in
 hi6421_spmi_pmic_probe()
Message-ID: <20201118111224.GC29398@kadam>
References: <20201118103724.57451-1-wanghai38@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201118103724.57451-1-wanghai38@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9808
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 adultscore=0
 bulkscore=0 suspectscore=2 spamscore=0 malwarescore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011180078
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9808
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 clxscore=1011
 malwarescore=0 impostorscore=0 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=999 adultscore=0 phishscore=0 suspectscore=2 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011180078
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
Cc: mchehab+huawei@kernel.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, mayulong1@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Not necessarily related to your patch but it should just return -ENOMEM
instead of the "goto irq_malloc;".

drivers/staging/hikey9xx/hi6421-spmi-pmic.c
   251          if (!gpio_is_valid(pmic->gpio))
   252                  return -EINVAL;
   253  
   254          ret = devm_gpio_request_one(dev, pmic->gpio, GPIOF_IN, "pmic");
   255          if (ret < 0) {
   256                  dev_err(dev, "failed to request gpio%d\n", pmic->gpio);
   257                  return ret;

This is a direct return.

   258          }
   259  
   260          pmic->irq = gpio_to_irq(pmic->gpio);

[ Edit.  Actually I can see that the original author must have thought
  that this needed to be released but it doesn't. ]

   261  
   262          hi6421_spmi_pmic_irq_prc(pmic);
   263  
   264          pmic->irqs = devm_kzalloc(dev, HISI_IRQ_NUM * sizeof(int), GFP_KERNEL);
   265          if (!pmic->irqs) {
   266                  ret = -ENOMEM;
   267                  goto irq_malloc;

This is a goto with a ComeFrom style label name, which says where it
is called from (The goto is at the place where irq_malloc fails).  This
is a useless label name because we can see from the line before that
the alloc failed.  What we want to know is what the goto does!

   268          }
   269  
   270          pmic->domain = irq_domain_add_simple(np, HISI_IRQ_NUM, 0,
   271                                               &hi6421_spmi_domain_ops, pmic);
   272          if (!pmic->domain) {
   273                  dev_err(dev, "failed irq domain add simple!\n");
   274                  ret = -ENODEV;
   275                  goto irq_malloc;

Here the label name is even more useless here because "irq_malloc"
didn't fail on the line before.  #Confusing  But we still don't know
what the goto does.

If we scroll down then we see that "goto irq_malloc" releases the IRQ.
A better name would be "goto err_irq;"

   276          }
   277  
   278          for (i = 0; i < HISI_IRQ_NUM; i++) {
   279                  virq = irq_create_mapping(pmic->domain, i);
   280                  if (!virq) {
   281                          dev_err(dev, "Failed mapping hwirq\n");
   282                          ret = -ENOSPC;
   283                          goto irq_malloc;
   284                  }
   285                  pmic->irqs[i] = virq;
   286                  dev_dbg(dev, "%s: pmic->irqs[%d] = %d\n",
   287                          __func__, i, pmic->irqs[i]);
   288          }
   289  
   290          ret = request_threaded_irq(pmic->irq, hi6421_spmi_irq_handler, NULL,
   291                                     IRQF_TRIGGER_LOW | IRQF_SHARED | IRQF_NO_SUSPEND,
   292                                     "pmic", pmic);

Except it turns out that we don't actually request the IRQ until this
line.  So those earlier "goto err_irq;" things are bogus.

   293          if (ret < 0) {
   294                  dev_err(dev, "could not claim pmic IRQ: error %d\n", ret);
   295                  goto irq_malloc;
   296          }
   297  
   298          dev_set_drvdata(&pdev->dev, pmic);
   299  
   300          /*
   301           * The logic below will rely that the pmic is already stored at
   302           * drvdata.
   303           */
   304          dev_dbg(&pdev->dev, "SPMI-PMIC: adding children for %pOF\n",
   305                  pdev->dev.of_node);
   306          ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
   307                                     hi6421v600_devs, ARRAY_SIZE(hi6421v600_devs),
   308                                     NULL, 0, NULL);
   309          if (!ret)
   310                  return 0;

This is "success handling" anti-pattern and "last condition is weird"
anti-pattern.  We should always do failure handling.  The code should
look like:

	success();
	success();
	success();
	success();
	if () {
		failure();
		failure();
		failure();
	}
	success();
	success();
	if () {
		failure();
		failure();
		failure();
	}

Failure is indented twice and success once.

   311  
   312          dev_err(dev, "Failed to add child devices: %d\n", ret);
   313  
   314  irq_malloc:
   315          free_irq(pmic->irq, pmic);

This free should only be done if devm_mfd_add_devices() fails.  I don't
know what happens if you free an IRQ which has not been requested.  I
think it triggers a WARN().

   316  
   317          return ret;
   318  }

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
