Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A161819E6C0
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Apr 2020 19:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77592884EE;
	Sat,  4 Apr 2020 17:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id shocqO6xxQzp; Sat,  4 Apr 2020 17:28:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D6149884B2;
	Sat,  4 Apr 2020 17:28:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A7DD1BF2B5
 for <devel@linuxdriverproject.org>; Sat,  4 Apr 2020 17:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1D55B8624A
 for <devel@linuxdriverproject.org>; Sat,  4 Apr 2020 17:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zu2O0lcElR2T for <devel@linuxdriverproject.org>;
 Sat,  4 Apr 2020 17:27:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D3E1D86248
 for <devel@driverdev.osuosl.org>; Sat,  4 Apr 2020 17:27:52 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 034HRi5a039558;
 Sat, 4 Apr 2020 17:27:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=AkiilIwBKQ8q6Fbxi2N5vnIT0ckEMpzvUWaBTQ4XtmY=;
 b=dzg0gE5J75EsBDVSsd9C05Njz0ff5Z35BNrMOqKTi5KKhw+ZszHHEc9LMrmJ8z5WRHey
 Y7jfQC05Tvkw7lH8gPVKYjWJQqLkul1pAJLNPFc8J9s7mVlcW2Q4SFaD9huNh+EI8N9v
 B3L3Mkr2BYFqUOle4FPL8qJoTYqXFoZ9LDLF5xdWwLQjK+MzY/Vxhdh8ieh0tH66mZuf
 RJNOs9OTnp89fSZFpUxWEiCt1rxdfR2d9awhFBZ4asaTxi6smUU21VVvzrngLk28/vGd
 r9ihRGj48zhXDU0YIUjFDYWvoGRK4Gyue3VGe185Pcby3mn9S5CUltRinbLTZScEuXMZ GQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 306j6m1ccc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 04 Apr 2020 17:27:51 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 034H7MB3080143;
 Sat, 4 Apr 2020 17:25:51 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 306j21rc9b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 04 Apr 2020 17:25:51 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 034HPjXS017911;
 Sat, 4 Apr 2020 17:25:46 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 04 Apr 2020 10:25:44 -0700
Date: Sat, 4 Apr 2020 20:25:37 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: George Spelvin <lkml@SDF.ORG>
Subject: Re: [PATCH v3] staging: wilc1000: Use crc7 in lib/ rather than a
 private copy
Message-ID: <20200404172537.GI2066@kadam>
References: <20200326152251.19094-1-ajay.kathat@microchip.com>
 <20200402082745.GG2001@kadam> <20200402153034.GB2013@SDF.ORG>
 <20200403091029.GC2001@kadam> <20200403234028.GA11944@SDF.ORG>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403234028.GA11944@SDF.ORG>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9581
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 malwarescore=0 phishscore=0
 mlxlogscore=909 spamscore=0 adultscore=0 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004040157
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9581
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=975 spamscore=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 mlxscore=0 phishscore=0 adultscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004040161
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
Cc: devel@driverdev.osuosl.org, Ajay.Kathat@microchip.com,
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Apr 03, 2020 at 11:40:28PM +0000, George Spelvin wrote:
> I understand that it's addressed more to patch authors than
> maintainers forwarding them, but I've read that thing a dozen times,
> and the description of S-o-b always seemed to be about copyright.
> 

It's to say that you didn't add anything which you shouldn't have, for
example, secret SCO UnixWare stuff.

> So I had assumed that edits which were below the de minimus standard
> of copyright didn't need a separate S-o-b.
> 
> Am I right that there should be an S-o-b from everyone from the
> patch author to the patch committer (as recorded in git)?  And the
> one exception is that we don't need S-o-b for git pulls after that,
> because the merge commits record the information?

Yes.  Also if people added their S-o-b for git merges it would change
the git hash for the patch which would suck.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
