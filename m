Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2756F24DCF
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 13:23:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F37328464B;
	Tue, 21 May 2019 11:23:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0YBvJCG7xB6F; Tue, 21 May 2019 11:23:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 59C36844A1;
	Tue, 21 May 2019 11:23:35 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 75FC31BF282
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 11:23:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6E20C844A1
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 11:23:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QuJisEqx34lX
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 11:23:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D31128449F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 11:23:31 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4LBIoqq093395;
 Tue, 21 May 2019 11:23:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=kXAREfMZxF3EOg2Ka0RqkuRTbunhTh27pAaqp2Yaoyo=;
 b=xe5iyLBpnqS127+oXHOOO+gOLOwu6E1DVDGSePCfSd2UC4v0boGoUR91mx39J5e6iRCf
 0cNxIj9ER2YYMocOLw2qDNzCf3LTc2tnl964TkspFvmUQHG4+3rumdXdNyzXSj5yFGmu
 Aj/xEGJja4kSOc0YhC+oDBHxcgxLwuAby5ivTx7XM4fn6udNTKSTa9PKRe38QxLUCXIS
 aj26DGkHjKDu8umtBAswQUzOBEbL9QsRMSVYGbCn+3f6e0cblsNEKA/Bm2a5T9dJ9Irw
 TG0Phd+iVy92D49i85t0NElXHQHUIfgeZNwkcBrt2D7QI5TH1vhOTA5UfJXOq0W1Lc0f oQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2sjapqch1y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 May 2019 11:23:23 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4LBLc4L056199;
 Tue, 21 May 2019 11:23:22 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2sks1jd5dn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 May 2019 11:23:22 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4LBNKGY004199;
 Tue, 21 May 2019 11:23:20 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 21 May 2019 11:23:19 +0000
Date: Tue, 21 May 2019 14:23:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 3/6] staging: kpc2000: simplified kp2000_device
 retrieval in device attributes call-backs.
Message-ID: <20190521112312.GI31203@kadam>
References: <20190517073057.GA2631@kroah.com>
 <20190517110315.10646-1-jeremy@azazel.net>
 <20190517110315.10646-4-jeremy@azazel.net>
 <20190517115451.GA1279@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517115451.GA1279@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9263
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905210071
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9263
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905210071
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 17, 2019 at 01:54:51PM +0200, Greg KH wrote:
> On Fri, May 17, 2019 at 12:03:12PM +0100, Jeremy Sowden wrote:
> >  static ssize_t  show_attr(struct device *dev, struct device_attribute *attr, char *buf)
> >  {
> > -    struct pci_dev *pdev = to_pci_dev(dev);
> > -    struct kp2000_device *pcard;
> > -
> > -    if (!pdev)  return -ENXIO;
> > -    pcard = pci_get_drvdata(pdev);
> > -    if (!pcard)  return -ENXIO;
> > +    struct kp2000_device *pcard = dev_get_drvdata(dev);
> 
> Wait, dev_get_drvdata() is not returning you the same pointer that
> pci_get_drvdata() does.  So I think this is now broken :(
> 

It looks sort of weird but it's fine.

> What this should look like is this:
> 	struct pci_dev *pdev = to_pci_dev(dev);
> 	struct kp200_device *pcard = pci_get_drvdata(pdev);
> 
> 	if (!pcard)
> 		return -ENODEV;
> 
> that is IF the driver really is setting the pci dev data to NULL when
> the device is removed from the driver.  Is it?

Yes.  The pci_get_drvdata() is only set to NULL after we remove the
sysfs files so pci_get_drvdata() always returns a valid pointer.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
