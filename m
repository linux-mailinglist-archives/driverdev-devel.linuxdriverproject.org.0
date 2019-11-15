Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAEFFD72B
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Nov 2019 08:42:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C39588CB1;
	Fri, 15 Nov 2019 07:42:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TRSMjcnAyq-n; Fri, 15 Nov 2019 07:42:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC3EB88C5C;
	Fri, 15 Nov 2019 07:42:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C3C21BF3BE
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 07:42:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1DE1189702
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 07:42:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ttmc2vIl4mJ6 for <devel@linuxdriverproject.org>;
 Fri, 15 Nov 2019 07:42:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 68417896EA
 for <devel@driverdev.osuosl.org>; Fri, 15 Nov 2019 07:42:46 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAF7d7m2109375;
 Fri, 15 Nov 2019 07:42:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=X0VNfringVRO9ZVRht9e5s3LnUQ2e+qgyFMElJYlBIg=;
 b=FTkRFdQCWVcIB180H/MSBxHyx1lVnNNCof55N5Ov2f+txzz8Za5Gydrm+0xdStCJBxOP
 4TjQXY4sZnWI3iTduYZ/gS7Zy/ZBBd9tATAg/Uy7oQirEjzUefd+JqpmRRFB41YqVrCe
 LQp9zTlFSuluEESaLQn00M4vzqOU0lIBr2Db49ie8wCOyuPnLjkJNhlS1eTUufJuy2rU
 Qlm6xurzXjLkBeH1h/ew5b4+SxRCvaGTXNukltC7PqXNlzhDJ+N5TdAraVDnxuoWM/4S
 ZZ8KyhMn+T23ILPwLM4ad+xOAfvMIsd09iCtIjQ0eRmlohDr9ISKh33mgnNwdGHUzilO nA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2w9gxphkbp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 15 Nov 2019 07:42:44 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAF7cgfb006334;
 Fri, 15 Nov 2019 07:42:43 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2w9h0jdu9v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 15 Nov 2019 07:42:43 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xAF7gh7n000598;
 Fri, 15 Nov 2019 07:42:43 GMT
Received: from kadam.lan (/129.205.23.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 14 Nov 2019 23:42:42 -0800
Date: Fri, 15 Nov 2019 10:42:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] staging: rtl*: Remove tasklet callback casts
Message-ID: <20191115074235.GJ19079@kadam.lan>
References: <201911142135.5656E23@keescook> <20191115074003.GB19101@kadam.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115074003.GB19101@kadam.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9441
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911150069
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9441
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911150069
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
 kernel-hardening@lists.openwall.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Romain Perier <romain.perier@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 15, 2019 at 10:40:03AM +0300, Dan Carpenter wrote:
> On Thu, Nov 14, 2019 at 09:39:00PM -0800, Kees Cook wrote:
> > In order to make the entire kernel usable under Clang's Control Flow
> > Integrity protections, function prototype casts need to be avoided
> > because this will trip CFI checks at runtime (i.e. a mismatch between
> > the caller's expected function prototype and the destination function's
> > prototype). Many of these cases can be found with -Wcast-function-type,
> > which found that the rtl wifi drivers had a bunch of needless function
> > casts. Remove function casts for tasklet callbacks in the various drivers.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Clang should treat void pointers as a special case.  If void pointers
> are bad, surely replacing them with unsigned long is even more ambigous
> and worse.

Wow...  Never mind.  I completely misread this patch.  I am ashamed.

The patch is fine.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
