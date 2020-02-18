Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEE1162197
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Feb 2020 08:44:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC22985BA9;
	Tue, 18 Feb 2020 07:44:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bt0gtWRXYWmJ; Tue, 18 Feb 2020 07:44:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 39AD5855D9;
	Tue, 18 Feb 2020 07:44:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 555901BF2AA
 for <devel@linuxdriverproject.org>; Tue, 18 Feb 2020 07:44:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5261A8598E
 for <devel@linuxdriverproject.org>; Tue, 18 Feb 2020 07:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H96BqS40R0TI for <devel@linuxdriverproject.org>;
 Tue, 18 Feb 2020 07:44:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B40B28598A
 for <devel@driverdev.osuosl.org>; Tue, 18 Feb 2020 07:44:00 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01I7hshl148884;
 Tue, 18 Feb 2020 07:43:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=2cFkJJ+HWXz8rBSLgVbh02TUoTvyZyGJ1ksnlPP9NrM=;
 b=fO3nknBQ/q/w2ukA1ZS7Kp/Uu7Qp2snL+wn0aw8BHScGey6QHUFCJnSRZ084h/Wla1d7
 l9CyxuzQl6LtfOVENSmjGIzkhzkSxmzAFvqHZUJaI7l65ArrkGvaWjNOYgaektzYq+2a
 YvJH10HZV8SABWf1DTOzfu8ZpLO7Jj8WMSegXfTCxR595PqnwMIF2dQprr2NFmD1GltD
 svQlVKSq6zwFNybGSZ7XaIoDI2MrL+tDnWl2M/0s/IvznB3A204L3vZVrbQv5tgfu97L
 8TLcZQmq5Y548Ruo+bs7H0QJc3E1i6Ra4mufnqhPudLo22ZzMKc0Kw07bdB0Pn3lhzTX rQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2y699rkppn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Feb 2020 07:43:59 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01I7fgEu116169;
 Tue, 18 Feb 2020 07:43:59 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2y6tepdnuk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Feb 2020 07:43:58 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01I7hhNs027756;
 Tue, 18 Feb 2020 07:43:43 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 17 Feb 2020 23:43:42 -0800
Date: Tue, 18 Feb 2020 10:43:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: staging: board: disabled driver
Message-ID: <20200218074335.GC19641@kadam>
References: <20200213185205.GA26906@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213185205.GA26906@kaaira-HP-Pavilion-Notebook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9534
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 phishscore=0 bulkscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=999 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002180062
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9534
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 lowpriorityscore=0 spamscore=0 clxscore=1015 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002180062
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 14, 2020 at 12:22:05AM +0530, Kaaira Gupta wrote:
> I made some changes in board.h and other files under board to remove the MACRO using conditions. I did git log --oneline "file path" to get the logs, but turned out the driver was disabled. Hence on seeing it's KConfig file I found STAGING_BOARd and searched it in device drivers in menuconfig. I found that OF_ADDRESS-> OF-> X86_INTEL_CE were disabled as well. But I couldn't find X86_INTEL_CE under the device drivers.What should I do about it? Is there a way around or should I look at other drivers than board?
> Thanks for your time!

Use "make nconfig" and then press F8 and search for X86_INTEL_CE.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
