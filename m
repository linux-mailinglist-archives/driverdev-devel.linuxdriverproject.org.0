Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 463A5CF2A7
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 08:18:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CA71875F0;
	Tue,  8 Oct 2019 06:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MeZmf8udaeL9; Tue,  8 Oct 2019 06:18:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E8848731C;
	Tue,  8 Oct 2019 06:18:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E3EA1BF289
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:18:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6B38A8486F
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:18:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0WM-KPLPMgsL for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 06:18:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 38C588612E
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 06:18:10 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9868pGS058848;
 Tue, 8 Oct 2019 06:18:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=TxoS/Gm9L16rEx4sKMIN1lXUX4H8BO7mQZrNvwfDPHE=;
 b=UnOpsGNLiJGHHEGAzZ7J9w01DVUuJ4vww3v+9au82jQ+LVgnnZvLcp3kFpP+bar73i2W
 J7N4a4wHikDMGulhAFZRQZw4sMsH/KQa+az6hJKEmKIRL1yaI3tsuDSqESfG/8Fp2xZe
 jBlfEdeAvqlTF529zaTwofjqlmSdvyGfcqRXpnHpzJ/rj/YDpl9uCp3+B15kA4aBuvLa
 1hMYlhh3FMlbm9xnPaUMP3OYQwd23W1OTxgfgy5Z42uTZFHxGtSWzht9B4c+OFpszcSO
 6RBNpLDRCRBgmybNHqtD77LPHvBADFf+6QprgqT/KxPMUjnk1+50Ri/8onOm5hM3H0mg 7A== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2vejkub7pf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 06:18:09 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9867j1X156445;
 Tue, 8 Oct 2019 06:18:08 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2vg1yvbvfp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 06:18:08 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x986I7YW024042;
 Tue, 8 Oct 2019 06:18:07 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 07 Oct 2019 23:18:07 -0700
Date: Tue, 8 Oct 2019 09:17:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Thomas Meyer <thomas@m3y3r.de>
Subject: Re: [PATCH] staging: wlan-ng: p80211wep.c: use lib/crc32
Message-ID: <20191008061748.GA25098@kadam>
References: <20191006140745.9952-1-thomas@m3y3r.de>
 <20191007140900.GX22609@kadam> <87lftwy1k4.fsf@m3y3r.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87lftwy1k4.fsf@m3y3r.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910080063
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910080063
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 07, 2019 at 06:15:23PM +0200, Thomas Meyer wrote:
> Dan Carpenter <dan.carpenter@oracle.com> writes:
> 
> > On Sun, Oct 06, 2019 at 04:07:45PM +0200, Thomas Meyer wrote:
> >> Use lib/crc32 instead of another implementation.
> >> 
> >> Signed-off-by: Thomas Meyer <thomas@m3y3r.de>
> >
> > I always get annoyed whenever anyone asks if people have tested their
> > patches, but have you tested this?
> 
> no annoynence on my side, but... :-)
> 
> Good question. I tell you what I did and then you tell me if I did test!
> 
> So I did this: I did write a small C program that does contain a small
> byte buffer and the extracted CRC32 logic from the wlan driver.
> The program does calculate the CRC32 sum with the extracted logic and by
> calling crc32_le function. but values are the same.
> 
> But as I don't own the hardware I couldn't do a real test with WEP (as
> far as I understand only WEP on this hardware would be affected.)
> 
> So a better test would be to find someone which actually owns the
> hardware and could test the change.
> 
> so... what do you think?

Could you send your test program?

Anyway your testing sounds reasonable so I'm fine with this change.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
