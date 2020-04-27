Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD8C1B9FFF
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 11:35:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AB51A87C0D;
	Mon, 27 Apr 2020 09:35:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CtM2DYBKF9hu; Mon, 27 Apr 2020 09:35:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B94787BC0;
	Mon, 27 Apr 2020 09:35:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C752B1BF3D6
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 09:35:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C45BC8634E
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 09:35:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j5sPZlx1aoHs for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 09:35:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8305C8630A
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 09:35:17 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03R9Wnhi058051;
 Mon, 27 Apr 2020 09:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=A5az7dF65zOGSMTSC9c4m0PsK5kwNcONhU9Y1vPVcKI=;
 b=qfX6crn+yLLpgIsGU5CH3LDdpb01M/cssMlcou0uuUeB9y4Pjh+rFrX8N4WK3Xv8bC0Z
 apVTN/p9H5dYpA0rI4s5eQcLQqDvz9UM+8iUT27avhW+FKui/sA1tNoDk4JVE3sV8rAb
 XbKHhKQa2f7omnadFT2o2B2GkGNC+Hc0nk6VOG4k1yWjQfwQhwi8NGMfkfcSXOgpc3EE
 uX7ZRF2TB8xOMYxnByUnxRMnwjtjZmtYl9p+OsnrcuivO8590ke2L6miVpeQ0Lp2FxWc
 Litvp8rGLzw00ytuWEd4M0bjivx/w8G8SMFwfIa71NPkWaq6IoCYLBM8Rb3Nc+ute1xx lQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 30nucfrhqw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Apr 2020 09:35:16 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03R9Vp24005599;
 Mon, 27 Apr 2020 09:35:15 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 30mxwvu6g0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Apr 2020 09:35:15 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03R9ZEbk026933;
 Mon, 27 Apr 2020 09:35:15 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 27 Apr 2020 02:35:14 -0700
Date: Mon, 27 Apr 2020 12:35:08 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kyoungho Koo <rnrudgh@gmail.com>
Subject: Re: [PATCH v3] Staging: gasket: fix typo in gasket_page_table.c
 comments.
Message-ID: <20200427093508.GR2659@kadam>
References: <20200425090714.GA2105@koo-Z370-HD3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200425090714.GA2105@koo-Z370-HD3>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9603
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0 bulkscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004270086
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9603
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 priorityscore=1501
 mlxlogscore=999 impostorscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 mlxscore=0 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004270086
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 25, 2020 at 06:07:17PM +0900, Kyoungho Koo wrote:
> I have found double typed comments "the the". So i modified it to
> one "the".
> 
> Signed-off-by: Kyoungho Koo <rnrudgh@gmail.com>
> ---
> Changes in v3:
>   - Modify the first letter of the name to uppercase.

Thanks!

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
