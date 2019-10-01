Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A739C4099
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 21:01:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB57087BA6;
	Tue,  1 Oct 2019 19:01:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kZ7DD6gzh2wM; Tue,  1 Oct 2019 19:01:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF8E0869FE;
	Tue,  1 Oct 2019 19:01:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5419C1BF310
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 19:01:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 50D9A85F43
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 19:01:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y-Yppkv6Lo5g
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 19:01:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 157D984C19
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 19:01:14 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91IxXnp172716;
 Tue, 1 Oct 2019 19:01:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=QfMwTd9urHfuts2lApeGx1pa6V1DGLg5wwkuKKMF6RA=;
 b=EhGxaEdj7Xib1xbn0khSOpHOHE5sNQFAz5DBVF9BECyntgcW3uoMb+DoLjuyuUC1sGXy
 I2bXsqrXkj6aeK2T6Zy48BlwWDcFWQWXmE/mYWMBjRNXVKBiLgujLETXkEdsTbB9WhHx
 tpZOlryQK9GHpNmNuYllaS59B7ht5g+uWjh5z7wDMCVSlxfLyCZcsVk0wsFDtQgw4jvJ
 0yfwT2haINBCTwzKWAQv2h4xqSJ0feeILtz7+MjvzoZh7EdOHUlytCguKICVrZiBEU1T
 tp6u2nRmc4edX1CuEQvRikiuaSwxAaU0mQnpaO2dCHsJrP+irSafwgsS8Yw2RBz2PRo0 NA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2v9xxur9em-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 19:01:10 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91IxKZV014748;
 Tue, 1 Oct 2019 19:01:10 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2vbqd1c94f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 19:01:10 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x91J16kc023775;
 Tue, 1 Oct 2019 19:01:06 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 01 Oct 2019 12:01:05 -0700
Date: Tue, 1 Oct 2019 22:00:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rohit Sarkar <rohitsarkar5398@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: Replace snprintf with scnprintf
Message-ID: <20191001185852.GJ22609@kadam>
References: <20190910184931.GA8228@SARKAR> <20191001084514.GJ27389@kadam>
 <20191001173926.GA11819@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001173926.GA11819@SARKAR>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9397
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910010152
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9397
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910010152
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
Cc: larry.finger@lwfiner.net, gregkh@linuxfoundation.org,
 driverdev-devel@linuxdriverproject.org, florian.c.schilhabel@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 01, 2019 at 11:09:26PM +0530, Rohit Sarkar wrote:
> On Tue, Oct 01, 2019 at 11:45:14AM +0300, Dan Carpenter wrote:
> > > diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > > index b08b9a191a34..ff5edcaba64d 100644
> > > --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > > +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > > @@ -142,7 +142,7 @@ static noinline_for_stack char *translate_scan_wpa(struct iw_request_info *info,
> > >  		memset(buf, 0, MAX_WPA_IE_LEN);
> > >  		n = sprintf(buf, "wpa_ie=");
> > >  		for (i = 0; i < wpa_len; i++) {
> > > -			n += snprintf(buf + n, MAX_WPA_IE_LEN - n,
> > > +			n += scnprintf(buf + n, MAX_WPA_IE_LEN - n,
> > >  						"%02x", wpa_ie[i]);
> > >  			if (n >= MAX_WPA_IE_LEN)
> >                             ^^^^^^^^^^^^^^^^^^^
> > It checks for overflow here.  This check is impossible now and doesn't
> > make sense.  The other loop is similar.
> 
> Good catch! I must have overlooked this.
> "n" cannot be greater than MAX_WPA_IE_LEN but it can be equal to that
> value. We can replace the '>=' with '==' so that we don't loop
> unnecessarily when n has reached it's threshold.

No.  scnprintf() returns the number of characters *not counting the
NUL terminator*.  So it can be a maximum of MAX_WPA_IE_LEN - 1.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
