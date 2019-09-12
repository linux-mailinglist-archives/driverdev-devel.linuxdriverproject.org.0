Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3618B0A66
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Sep 2019 10:34:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C828E87FC9;
	Thu, 12 Sep 2019 08:34:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xQ94Wnnp9tJL; Thu, 12 Sep 2019 08:34:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4CEEE87D9D;
	Thu, 12 Sep 2019 08:34:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B372C1BF83A
 for <devel@linuxdriverproject.org>; Thu, 12 Sep 2019 08:34:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AEE8887D9F
 for <devel@linuxdriverproject.org>; Thu, 12 Sep 2019 08:34:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DvKqysVAKYyD for <devel@linuxdriverproject.org>;
 Thu, 12 Sep 2019 08:34:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 34B9587D9D
 for <devel@driverdev.osuosl.org>; Thu, 12 Sep 2019 08:34:09 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8C8JBTh021612;
 Thu, 12 Sep 2019 08:34:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=6DO3cZ/C+dKYPej/qzrFPSWCEgvugiX6kxk6zUsvZqs=;
 b=OCiXsUcFVUG40Tkg9mPHRciwJg1/GADCpjRH4o1HFMbGXs+Gu2V8iN5eUMZ2vRl5bash
 +NStBguTmeN3D8UphxUB4ZNjaAI4EL6ncCHrgxzrr1xzRZvqDVlpQg2szDftOBCDDoTB
 Fk5QOojvIz9s+6J/BEt7cYh+7T1cCG0J5pse4kfKPHBHUkdtg2JXKxB1vmdeU7w3bpQf
 UetqJcwxygqiwjtso5UrfxOekIgE1EjayF272St4luuzr2JhUBCvtOFi2lR3R+ycM3HS
 +wbhuYez2TELpynwenZZ76B6nSt2pdYOyEbQvv98LuIyvHTgnS33q0bvYkwci8Z670hJ Xg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2uw1jyevx9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Sep 2019 08:34:06 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8C8J3QJ013733;
 Thu, 12 Sep 2019 08:32:06 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2uxk0u3t14-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Sep 2019 08:32:06 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8C8W0O3002104;
 Thu, 12 Sep 2019 08:32:01 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 12 Sep 2019 01:31:59 -0700
Date: Thu, 12 Sep 2019 11:31:53 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sandro Volery <sandro@volery.com>
Subject: Re: [PATCH v5] Staging: exfat: Avoid use of strcpy
Message-ID: <20190912083153.GN20699@kadam>
References: <20190912082559.GA5043@volery>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912082559.GA5043@volery>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9377
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=864
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909120090
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9377
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=934 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909120090
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 valdis.kletnieks@vt.edu, linux-kernel@vger.kernel.org,
 linux@rasmusvillemoes.dk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

You did it.  Well done.  :P

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
