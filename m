Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8FA1B594D
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 12:34:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 63D2E86C6A;
	Thu, 23 Apr 2020 10:34:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uj4cGyEXVjP3; Thu, 23 Apr 2020 10:34:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B81786C04;
	Thu, 23 Apr 2020 10:34:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE5301BF40A
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 10:34:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CB4A686C1B
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 10:34:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IKE0MsGddPx7 for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 10:34:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 447BB86C04
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 10:34:54 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03NAWuDF062412;
 Thu, 23 Apr 2020 10:34:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=yVhcOPH5NmXAs6Vn/3Nm2sX2Plx+OSxpYkzzKGQ2y+c=;
 b=i24mLnir7ZUnOcWpYfGcnB+gVswRzg55sPQc/W9qc9OJAfKxQkJdH1RDS9tZUfIuNHUx
 llrJInezVPtbCadLUxjSSLdBUSTLwndHRroBtCwRuhlgQOiLYyHEfnJLjZr9aweDY19+
 nr3EB9u/Q4Bf+1aCl8d1aFzKYfpJR6VzNMqCy3WVZTROfRMfXscJ23z8dWsUCiLAK02W
 oj6FcEt9YC/UqJv5Ec5SC7yzvdJuYYujk37jIGtry9NYkWS3QM4fOic8J+aVQntTBYje
 Ex38o/02i3r+5HWwukFrVDtek9zkLrCPzvYknIa6ZLasAd5ULugOuGO11uAy/plH//PL Tw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 30k7qe0ghu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 Apr 2020 10:34:53 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03NAWKcK075127;
 Thu, 23 Apr 2020 10:34:52 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 30gb1mejyq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 Apr 2020 10:34:52 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 03NAYpi7032291;
 Thu, 23 Apr 2020 10:34:51 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 23 Apr 2020 03:34:50 -0700
Date: Thu, 23 Apr 2020 13:34:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH] staging: wfx: cleanup long lines in data_tx.c
Message-ID: <20200423103439.GN2659@kadam>
References: <20200422153900.GA6184@blackclown>
 <2253201.upfRyW1aZW@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2253201.upfRyW1aZW@pc-42>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9599
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0 spamscore=0
 mlxlogscore=951 mlxscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004230082
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9599
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 mlxscore=0 clxscore=1011 malwarescore=0 adultscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004230082
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Suraj Upadhyay <usuraj35@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 23, 2020 at 09:29:28AM +0000, Jerome Pouiller wrote:
> >         req->data_flags.fc_offset = offset;
> >         if (tx_info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM)
> >                 req->data_flags.after_dtim = 1;
> > @@ -517,7 +523,8 @@ void wfx_tx_confirm_cb(struct wfx_vif *wvif, const struct hif_cnf_tx *arg)
> >                 if (tx_count < rate->count &&
> >                     arg->status == HIF_STATUS_RETRY_EXCEEDED &&
> >                     arg->ack_failures)
> > -                       dev_dbg(wvif->wdev->dev, "all retries were not consumed: %d != %d\n",
> > +                       dev_dbg(wvif->wdev->dev,
> > +                               "all retries were not consumed: %d != %d\n",
> 
> Is this reported by checkpatch? The strings can exceed 80 columns.
> 

The string can go over 80 characters, but it's nice to do our best to
avoid it so we do normally break it up like this where the string is
on its own line.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
