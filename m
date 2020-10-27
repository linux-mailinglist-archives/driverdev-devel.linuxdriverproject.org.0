Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A631929AC67
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 13:44:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5C87867A7;
	Tue, 27 Oct 2020 12:44:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EBCrsx6+3HBu; Tue, 27 Oct 2020 12:44:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C21128643F;
	Tue, 27 Oct 2020 12:44:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E25641BF84C
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 12:44:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D92388727E
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 12:44:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bzMPhHFHyWdD for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 12:44:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7F79D87258
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 12:44:26 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RCTPMN025052;
 Tue, 27 Oct 2020 12:44:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=W0kU8jHRcwyBRlgrd+WwhgxOmD0kqKKZKBvEtmKWzr0=;
 b=Wxk4MFZKtap2wRdhiuOxvc0S9ohlfpc8OYlMM9/MO2RYzExGl6yZq71ZUV8KDLKHxev4
 PtC4gsB+Ko6rrOnvg6aAm2fMK/OcJjnf7wF3kv2VSeYQ/IOkGv8jX07GX5W/M4Z0cGUP
 SUUwupvgd15U0+e4w7FTwDAMuyrPG5NuYGKpCofeGjhYmyiGRhWMtZwI90wWHJBp4dwx
 gzTLKxc9pr7Kyag/dlxqSLU0yjYH56m0IvnEZzfrJsFB3T5Owmd5JEX2s2Q8gNqnIx3w
 M6D2I1sYy7qiOHfe/0rw5ozYGoiccIpjmvmzt3yNUg0tsS4JJLytAMPKRFRTB9tBsVYT mw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 34c9sasteq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 27 Oct 2020 12:44:25 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RCVXDi142242;
 Tue, 27 Oct 2020 12:44:24 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 34cx6vwmwg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Oct 2020 12:44:24 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 09RCiNEK028658;
 Tue, 27 Oct 2020 12:44:23 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 27 Oct 2020 05:44:23 -0700
Date: Tue, 27 Oct 2020 15:44:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging/rtl8712: use BIT macro
Message-ID: <20201027124417.GW1042@kadam>
References: <20201020182439.43314-1-eafanasova@gmail.com>
 <20201020182439.43314-3-eafanasova@gmail.com>
 <20201020184404.GC20115@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201020184404.GC20115@casper.infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 spamscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010270081
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 impostorscore=0
 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1031 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010270081
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
Cc: Elena Afanasova <eafanasova@gmail.com>, devel@driverdev.osuosl.org,
 outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 20, 2020 at 07:44:04PM +0100, Matthew Wilcox wrote:
> On Tue, Oct 20, 2020 at 11:24:39AM -0700, Elena Afanasova wrote:
> > Reported by checkpatch.pl
> 
> Checkpatch is wrong.
> 
> > +++ b/drivers/staging/rtl8712/rtl871x_recv.h
> > @@ -8,7 +8,7 @@
> >  #define NR_RECVFRAME 256
> >  
> >  #define RXFRAME_ALIGN	8
> > -#define RXFRAME_ALIGN_SZ	(1 << RXFRAME_ALIGN)
> > +#define RXFRAME_ALIGN_SZ	BIT(RXFRAME_ALIGN)

Yeah.  It's weird to talk about size as a BIT() flag.  The RXFRAME_ALIGN
is not needed.  Just say:

-#define RXFRAME_ALIGN      8
-#define RXFRAME_ALIGN_SZ   (1 << RXFRAME_ALIGN)
+#define RXFRAME_ALIGN_SZ 256

This is literally used for aligning the RX frame.  It seems like a crazy
thing to me that to aligned at 256 bytes.  I would have expected 64 bit
alignment or page alignment but not 256 byte alignment...  Weird.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
