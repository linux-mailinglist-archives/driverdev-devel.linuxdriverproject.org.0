Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C671BCCD0
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 21:58:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 442FB22850;
	Tue, 28 Apr 2020 19:58:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HbW0mWpkeAne; Tue, 28 Apr 2020 19:58:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 88A8A228BD;
	Tue, 28 Apr 2020 19:58:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31AB11BF2B9
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 19:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E7C1875E9
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 19:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9jwbwpgRDxNI for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 19:58:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 796158761A
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 19:58:09 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SJrp4B001622;
 Tue, 28 Apr 2020 19:58:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=fgVW8SHlL4lo+HxxlLz7Gr/ftUNHzPDePQJYvyyrBI4=;
 b=kxvn03Qcj77WKcY+oCnkzbE133TkmTB5xUfqKzOiKDKPtM8JYr5FTFTykSLs80QP5loP
 i4ZDn+GZWw09SkJOERPGEniHA0LmQTZREao0ypUmcLamJUgU8kApDaoJl2CSRqzL/0EJ
 pCgCJo8SMDgqn0z2i413gk7zMFA82a6opg1BJYb1rL25ShA/Z4M1+H4iED7ubC5z2qKU
 6fcp/x5CL3bxl0wlh9kLOy6eOWdfJfok6rpGsPA6aFNhF+JmoVW79vL5GnchWKvv9718
 IllIoBefAQcgtXrFa3g7Gn9GFjTxO0U3Sspnx9A9pej0RdJzotn65MH13yRTz6UokuvX qQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 30p2p07gbe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 19:58:08 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SJqfKu164941;
 Tue, 28 Apr 2020 19:56:08 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 30mxpgv1yb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 19:56:08 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03SJu6sf008267;
 Tue, 28 Apr 2020 19:56:06 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 Apr 2020 12:56:06 -0700
Date: Tue, 28 Apr 2020 22:56:00 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Suraj Upadhyay <usuraj35@gmail.com>
Subject: Re: [PATCH v4] staging: wfx: cleanup long lines in data_tx.c
Message-ID: <20200428195600.GN2014@kadam>
References: <20200425113234.GA14492@blackclown> <8518467.FNpd3NTrYF@pc-42>
 <20200427115827.GA3214@blackclown>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427115827.GA3214@blackclown>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9605
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0
 mlxscore=0 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004280156
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9605
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 clxscore=1015
 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 mlxscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004280156
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 27, 2020 at 05:28:27PM +0530, Suraj Upadhyay wrote:
> On Mon, Apr 27, 2020 at 11:50:23AM +0000, Jerome Pouiller wrote:
> > On Saturday 25 April 2020 13:32:34 CEST Suraj Upadhyay wrote:
> > > Break lines with length over 80 characters to
> > > conform to the linux coding style and refactor
> > > wherever necessary.
> > > 
> > > Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> > > ---
> > > 
> > > Changes in v4:
> > > 	- Added a space after declaration in wfx_get_hw_rate().
> > > 	- A checkpatch warning for this commit is retained at line 75,
> > > 	  to maintain uniformity in function declarations. (Reviewer
> > > 	  jerome suggested).
> > > 
> > > Changes in v3:
> > >         - Changed the temporary variable name for the memzcmp statement
> > >           to is_used. (as suggested).
> > >         - Added a temporary ieee80211_supported_band variable to address
> > >           the problem in wfx_get_hw_rate() more efficiently. (not
> > >           suggested, but still).
> > > 
> > > Changes in v2:
> > >         - Introduced a temporary variable for the memzcmp statement.
> > >         - Addressed the checkpatch problem with wfx_get_hw_rate().
> > >         - Restored the function definition of wfx_tx_get_tx_parms
> > >           as suggested by the reviewer.
> > >         - Added suggested changes for req->packet_id statement.
> > > 
> > >  drivers/staging/wfx/data_tx.c | 40 +++++++++++++++++++++++------------
> > >  1 file changed, 26 insertions(+), 14 deletions(-)
> > 
> > This patch does not contain the suggestions from Dan. However, it is
> > sufficient from my personal point of view.
> 
> Yes, I considered them but thought it would be bad to introduce a new
> variable at every iteration of the for-loop.
> 

It's not bad at all.  I don't know why someone would think that.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
