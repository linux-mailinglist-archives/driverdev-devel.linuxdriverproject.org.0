Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F984C901
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 10:08:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08BE987DAA;
	Thu, 20 Jun 2019 08:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wsz9tPMx1obk; Thu, 20 Jun 2019 08:08:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97C0581F2E;
	Thu, 20 Jun 2019 08:08:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F220B1BF3A0
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 08:08:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EEC13820B3
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 08:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cd1W3FbhcpaU for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 08:08:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7FA2181F2E
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 08:08:16 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5K7x1sJ118003;
 Thu, 20 Jun 2019 08:08:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=zBKsoyvZW42pljgNs2qIOF6TztDTbsqax0iQzIQWQUA=;
 b=IO39YWtx315X9D1XDONT/hV6oOqgLDC5cWdY86W8w1eUA7akaDTdh5p0Zf9jdfT/pU5v
 rxuiSi8mxZmwbNpX8tnI91it0uvaWnf/a4mT9bN9rXqqxB5Yj0lcR6i2CPz0RXeG4gAi
 r0AFK1OTi6xZxaA8jqZEsxXQF80saqJQ2l5/YPdACkbvgaQzIySQnQMa7Tv84wlZ+qww
 dIwhmQVH9iY814Akxzjz6foqmHmjWihwnka9gJjQkUY2MOkF78pjT/ktLTjj9UF4ocBY
 josGw8OekFwBNtcDtcFR9tRyeLmmakr3yc0uiHKNy//GLu+O/6Uy28WwnReimJzIaHkM ew== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2t7809fjnr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Jun 2019 08:08:13 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5K85CTN058654;
 Thu, 20 Jun 2019 08:06:12 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2t77yngf24-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Jun 2019 08:06:12 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5K86A2H018024;
 Thu, 20 Jun 2019 08:06:11 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 20 Jun 2019 01:06:10 -0700
Date: Thu, 20 Jun 2019 11:06:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: hal: hal_btcoex: Remove variables
 pHalData and pU1Tmp
Message-ID: <20190620080602.GR28859@kadam>
References: <20190620022726.GA19556@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620022726.GA19556@hari-Inspiron-1545>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9293
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=938
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906200062
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9293
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=987 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906200062
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Looks good.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
