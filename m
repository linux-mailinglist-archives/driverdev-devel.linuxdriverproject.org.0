Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 878EE29ADF6
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 14:52:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 05D7C20502;
	Tue, 27 Oct 2020 13:52:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id agnfZ6AISVyx; Tue, 27 Oct 2020 13:52:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1435A20353;
	Tue, 27 Oct 2020 13:52:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC1EC1BF328
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 13:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B94B62044C
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 13:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mDlPUWVB-lu5 for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 13:52:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by silver.osuosl.org (Postfix) with ESMTPS id 830C320353
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 13:52:37 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RDnCGM180411;
 Tue, 27 Oct 2020 13:52:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=6J5GN4d5P1+bocAuEidN1XpSs96xBvmmrRX7NOOyVS4=;
 b=HkLdyw2l/iH/vE37I/zk6srJmKIzDiLfMKEUvrbxGmwhixxeyfQiXAL6t7TcNZ4yVfI/
 51jLJkBSggOcS11LiNgm2oIFGkx/g+I+xPyQP6APkJZ8QrLS0jVUDYMKj89Te8rIlv2L
 1sIebBJCBJnMtj+uXHy/Vm/Miw1eWhqWHnd+y3e+NhSwaOOq0ekcQy2EoftsU66NKFfu
 OkjrlW0nJ73yyAdckggOrzA94Fs7BcW/shE4mtZTD9clMTdMgvDsQltkkHdyzOzcKCEN
 MvaRkAguEaAqY+tBbFHj6yC0COv29TTwcp1XHQ7TFgFwbNqKgQYCq1jTHFIa06Ywohp9 3Q== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 34c9sat6ub-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 27 Oct 2020 13:52:36 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RDoJJW118430;
 Tue, 27 Oct 2020 13:50:35 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 34cx1qraa9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Oct 2020 13:50:35 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 09RDoY0W011464;
 Tue, 27 Oct 2020 13:50:34 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 27 Oct 2020 06:50:33 -0700
Date: Tue, 27 Oct 2020 16:50:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: rtl8192e, rtl8192u: use correct notation to
 define pointer
Message-ID: <20201027135028.GZ1042@kadam>
References: <20201026121435.GA782465@LEGION>
 <20201027112303.GA405023@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027112303.GA405023@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 bulkscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010270087
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 impostorscore=0
 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1011 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010270087
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
Cc: devel@driverdev.osuosl.org, Muhammad Usama Anjum <musamaanjum@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 27, 2020 at 12:23:03PM +0100, Greg KH wrote:
> On Mon, Oct 26, 2020 at 05:14:35PM +0500, Muhammad Usama Anjum wrote:
> > Use pointer notation instead of using array notation as info_element is
> > a pointer not array.
> > 
> > Warnings from sparse:
> > drivers/staging/rtl8192u/ieee80211/ieee80211.h:1013:51: warning: array of flexible structures
> > drivers/staging/rtl8192u/ieee80211/ieee80211.h:985:51: warning: array of flexible structures
> > drivers/staging/rtl8192u/ieee80211/ieee80211.h:963:51: warning: array of flexible structures
> > drivers/staging/rtl8192u/ieee80211/ieee80211.h:996:51: warning: array of flexible structures
> > drivers/staging/rtl8192u/ieee80211/ieee80211.h:974:51: warning: array of flexible structures
> > 
> > drivers/staging/rtl8192e/rtllib.h:832:48: warning: array of flexible structures
> > drivers/staging/rtl8192e/rtllib.h:851:48: warning: array of flexible structures
> > drivers/staging/rtl8192e/rtllib.h:805:48: warning: array of flexible structures
> > drivers/staging/rtl8192e/rtllib.h:843:48: warning: array of flexible structures
> > drivers/staging/rtl8192e/rtllib.h:821:48: warning: array of flexible structures
> > 
> > Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
> > ---
> >  drivers/staging/rtl8192e/rtllib.h              | 10 +++++-----
> >  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 12 ++++++------
> >  2 files changed, 11 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
> > index b84f00b8d18b..1dab9c3d08a8 100644
> > --- a/drivers/staging/rtl8192e/rtllib.h
> > +++ b/drivers/staging/rtl8192e/rtllib.h
> > @@ -802,7 +802,7 @@ struct rtllib_authentication {
> >  	__le16 transaction;
> >  	__le16 status;
> >  	/*challenge*/
> > -	struct rtllib_info_element info_element[];
> > +	struct rtllib_info_element *info_element;
> >  } __packed;
> 
> Are you sure these changes are correct?  This isn't just a list of
> structures after this at the end of the structure?

Definitely the patch will break things at runtime.  I was surprised that
it compiles, but it does.

> 
> Please look at commit 5979afa2c4d1 ("staging: Replace zero-length array
> with flexible-array member") which made most of these flexible arrays.
> 
> This is not a pointer, it really is an array, I think sparse is really
> wrong here, be careful.

It's an interesting warning message.  Sparse is correct that the code
looks strange.  If there were ever two or more elements in the array
then the code would break.  But since the code only uses a max of one
element then it's fine.

I guess the question is does this warning ever catch bugs in real life?
It seems like that the kind of bug which would be caught in testing so
static analysis is not going to be useful.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
