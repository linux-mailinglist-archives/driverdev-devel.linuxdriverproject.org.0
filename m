Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED46EF392
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 11:58:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 841AC868F9;
	Tue, 30 Apr 2019 09:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YDLXuhTpJsVW; Tue, 30 Apr 2019 09:58:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F53A8682C;
	Tue, 30 Apr 2019 09:58:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD40A1BF27C
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 09:58:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C7BEB8682C
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 09:58:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Bx3RT+09rZr for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 09:58:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 136A486761
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 09:58:38 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x3U9rRmA035227;
 Tue, 30 Apr 2019 09:58:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=JCtV/ZLtr2X4CT0OeJOY2sF0kaDDNi70kDHNC8+vCUU=;
 b=uvzaUue8m2vWFGgb3BIU5Xgr85OL4zhdxHc74C4oEkFlz4ouBbKRu12VNcFcohd+jIur
 XqVmZYutdshWiv1enve/+OV5TYurZj+ssuM7xl2MQATtfH+XnQFBs80P3mMN3wCvxqbd
 7yEVFwAkVBclZCvPDQZIg5WwQrceSHDbs6uHreUxdx03Y1foXM0ozZUzhiVFSzqzYHOI
 XeRwzFr2yMM5ZY20JDP4c6b0v3rcHhJ+C/ZgnEpIzGUXw1UGhZ59Hyy1VOkkon/ISf3W
 D8SmS+uNhqxNz8w719BWokZag5TaMy+lyOdevljfNgkfaWgxlFeZpT0mXr5GmrvsBNkV UQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 2s4ckdbr9w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Apr 2019 09:58:36 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x3U9ui7q073845;
 Tue, 30 Apr 2019 09:58:36 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2s4ew1562p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Apr 2019 09:58:36 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x3U9wVTb027602;
 Tue, 30 Apr 2019 09:58:31 GMT
Received: from kadam (/196.97.65.153) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 30 Apr 2019 02:58:31 -0700
Date: Tue, 30 Apr 2019 12:58:21 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nicholas Mc Guire <hofrat@osadl.org>
Subject: Re: [PATCH] staging: greybus: use proper return type for
 wait_for_completion_timeout
Message-ID: <20190430095821.GD2269@kadam>
References: <1556335645-7583-1-git-send-email-hofrat@osadl.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556335645-7583-1-git-send-email-hofrat@osadl.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9242
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=817
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1904300066
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9242
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=840 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1904300066
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, David Lin <dtwlin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 27, 2019 at 05:27:25AM +0200, Nicholas Mc Guire wrote:
> wait_for_completion_timeout() returns unsigned long (0 on timeout or
> remaining jiffies) not int. 
> 

Yeah, but it's fine though because 10000 / 256 fits into int without a
problem.

I'm not sure this sort of patch is worth it when it's just a style
debate instead of a bugfix.  I'm a little bit torn about this.  In
Smatch, I run into this issue one in a while where Smatch doesn't know
if the timeout is less than int.  Right now I hacked the DB to say that
these functions always return < INT_MAX.

Anyway, for sure the commit message should say that it's just a cleanup
and not a bugfix.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
