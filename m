Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 751BD900B7
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 13:28:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BC21223223;
	Fri, 16 Aug 2019 11:28:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C2XB7VLv6f+2; Fri, 16 Aug 2019 11:28:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 566E523236;
	Fri, 16 Aug 2019 11:28:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8009E1BF325
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 11:28:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7CCC286A61
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 11:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NgO0FQHGN3eU for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 11:28:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 096AD85CA3
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 11:28:33 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7GBNw7F109538;
 Fri, 16 Aug 2019 11:28:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=SqXeneh5bcubBR+QyitTTb1yLD5Uh3NKY8dvKiiRDp4=;
 b=dxczLG/XYCt7XkjLc8FaO8r8HZR+RKxUxjj544ZKc2fSI5vu/ItVvpvD5TBDlNxAIlpu
 WF0tGkD9sAf+dTYi4gxExKwPx/kDA8j9ASZgBrM1lI+E3BZuNRSD6bNbb496qdeDkdBN
 12xYkwU6FeviXs1ie4GvxUPEajafJ235BAhO3KbW7wnjX1QT4XPwpQLZbWnTTlW/6OED
 VZSbqP8LKE5XjScbPDPTyhWkHiKhDuQzuuWq2Vw9m6L9l75+RiAakgs9YD//gGjgZkf4
 LZ3Nb95OJrzmruUNrr+DjKcGgKZ7CyWyCOgmHy2b/aIbXbJMOlXWdX88cyAujYei/NRD lA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2u9pjqyveh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 16 Aug 2019 11:28:32 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7GBS9Pm154035;
 Fri, 16 Aug 2019 11:28:32 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2udscpb8gq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 16 Aug 2019 11:28:32 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7GBSVFw009073;
 Fri, 16 Aug 2019 11:28:31 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 16 Aug 2019 04:28:30 -0700
Date: Fri, 16 Aug 2019 14:28:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Zhao Yakui <yakui.zhao@intel.com>
Subject: Re: [RFC PATCH 04/15] drivers/acrn: add the basic framework of acrn
 char device driver
Message-ID: <20190816112820.GV1974@kadam>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-5-git-send-email-yakui.zhao@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565922356-4488-5-git-send-email-yakui.zhao@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9350
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908160121
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9350
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908160120
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
Cc: devel@driverdev.osuosl.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 Jason Chen CJ <jason.cj.chen@intel.com>, Jack Ren <jack.ren@intel.com>,
 Liu Shuo <shuo.a.liu@intel.com>, Mingqiang Chi <mingqiang.chi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 16, 2019 at 10:25:45AM +0800, Zhao Yakui wrote:
> +static
> +int acrn_dev_open(struct inode *inodep, struct file *filep)
> +{
> +	pr_info("%s: opening device node\n", __func__);
> +
> +	return 0;
> +}
> +
> +static
> +long acrn_dev_ioctl(struct file *filep,
> +		    unsigned int ioctl_num, unsigned long ioctl_param)
> +{
> +	long ret = 0;
> +
> +	return ret;


This module is mostly stubs and debugging printks...  :(

I looked ahead in the patch series to see if we do something with the
stubs later on and it turns out we do.  Fold the two patches together so
that we don't have to review patches like this one.  Each patch should
do "one thing" which makes sense and can be reviewed independently.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
