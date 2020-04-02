Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DAD19BD62
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 10:16:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AB0908789B;
	Thu,  2 Apr 2020 08:16:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id daFw0SjtJtwS; Thu,  2 Apr 2020 08:16:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91149868C6;
	Thu,  2 Apr 2020 08:16:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9AC2B1BF3AF
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 08:16:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9725D86DD6
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 08:16:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HCCtzOHbhNAw for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 08:16:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 257D3868C6
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 08:16:10 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0328DQwQ143813;
 Thu, 2 Apr 2020 08:16:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=mime-version :
 message-id : date : from : to : cc : subject : references : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=O6BIiuKyZpO6P/IQ7LqOJjcZsm3+4lrzYTFGZULwaZg=;
 b=ApHM7iN40FK5+SS6+xuNNpsMZf22crsmUKtWfIySGUSce5912uZPuHlBsEpr+M/GG+OM
 gcOUdCfYMbvJK0FAv7KsPq5+ntPeyPWHkRnEl5FqbexJBz+VmgI+0/8/xO8oTaOC/4dw
 KlhEBg9abY1TolO3X1sYzBNT4OgP+hAHonRAK6YR7SWqZmL2Mu1uxn1oUR9Ifm+i8J3U
 2xDuwyBmtvxi65vb8zqB1bIFofoiLQUoCTTwdGlXm4elqVi71pIZq06YQsIQ3wG6RN6e
 gqT8KYg+xuCBy/m2Ju7EMeWtBiBd0GtnZfoLiAtLlQaLTZwLYpqK6KKK/DdmgLUDjpJf AA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 303aqhta04-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 08:16:09 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0328CQ1r076164;
 Thu, 2 Apr 2020 08:14:08 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 302g4v4hyu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 08:14:08 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0328E6Dw020581;
 Thu, 2 Apr 2020 08:14:06 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 02 Apr 2020 01:12:19 -0700
USER-AGENT: Mutt/1.9.4 (2018-02-28)
MIME-Version: 1.0
Message-ID: <20200402081211.GC2001@kadam>
Date: Thu, 2 Apr 2020 01:12:12 -0700 (PDT)
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Aiman Najjar <aiman.najjar@hurranet.com>
Subject: Re: [PATCH] staging: rtl8712: fix checkpatch warnings
References: <20200326055616.GA3718@kernel-dev>
In-Reply-To: <20200326055616.GA3718@kernel-dev>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 mlxlogscore=851 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020074
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 clxscore=1011
 malwarescore=0 impostorscore=0 mlxlogscore=905 spamscore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020074
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 26, 2020 at 01:56:16AM -0400, Aiman Najjar wrote:
> @@ -350,7 +351,7 @@ static int xmitframe_addmic(struct _adapter *padapter,
>  	struct	sta_info *stainfo;
>  	struct	qos_priv *pqospriv = &(padapter->mlmepriv.qospriv);
>  	struct	pkt_attrib  *pattrib = &pxmitframe->attrib;
> -	struct	security_priv *psecuritypriv = &padapter->securitypriv;
> +	struct	security_priv *psecpriv = &padapter->securitypriv;

This patch is doing too many things of course, but the other problem is
that when you're renaming variables we don't what them to start with "p"
to mean that they are a pointer.  "psecpriv" should just be "secpriv".
That name is still kind of rubbish, but it's not against the rules like
starting with a p for pointer.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
