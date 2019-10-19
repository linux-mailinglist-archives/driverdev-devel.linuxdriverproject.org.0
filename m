Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F604DD9FB
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 20:07:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC02587C3F;
	Sat, 19 Oct 2019 18:07:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nlzZiy8ZC4qu; Sat, 19 Oct 2019 18:07:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EAB9287B97;
	Sat, 19 Oct 2019 18:07:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 18E3C1BF322
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 18:07:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 15C4185C9D
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 18:07:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pd6crT9yAYcs for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 18:07:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8807F85C7A
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 18:07:31 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9JI4PpP055516;
 Sat, 19 Oct 2019 18:07:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=xzaow11/xSCqBracFjPSult9QZ36gtDXdo3LvSEBtNo=;
 b=iDtdMIIk2Ez8a4Y7MNJiIuvn7RpyEMjJg6bALuhHOrokqqRWY0LxR0L1Rk1lZEuwyRJf
 jT5IoSHoudMQe46OEo5xDPYf7McxF1JI+DjVF/V8Hy9ba9Bpv9eDwunKmRuPr2J7T0nL
 MP/2Fm81f9/KvbH2dbynifA7r2/MhQcN6/q5YD6ZwLFnYXmJa5+14PX1r9X1vTRLEIsh
 n5m4A0zf+KYByoNz4HtDSsDNgzEWGfqGE0/f6QoZZ/VX5distDMipKOER2mw/uZAX9I5
 vF8Quo/3IBxxyVyscp4wpQseKrKLVWeROqJ5iM1c4NWumI1QP8rIDUXbfs7T4BSlRL6V vg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2vqtep9kp1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 19 Oct 2019 18:07:30 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9JI3sUI036452;
 Sat, 19 Oct 2019 18:05:30 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2vqrhe7fe8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 19 Oct 2019 18:05:30 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9JI5SJB019107;
 Sat, 19 Oct 2019 18:05:28 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 19 Oct 2019 18:05:27 +0000
Date: Sat, 19 Oct 2019 21:05:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is necessary
Message-ID: <20191019180514.GI24678@kadam>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
 <20191019140719.2542-2-jbi.octave@gmail.com>
 <20191019142443.GH24678@kadam>
 <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9415
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910190170
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9415
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910190170
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 19, 2019 at 04:09:03PM +0100, Jules Irenge wrote:
> Checkpatch was complaining about  space between type cast and the 
> variable. I just get rid of the space. Well I don't know whether this was 
> false positive one.
> 
> Thanks for the feedback. I will update the patch.

No no.  The patch is fine.  I was saying that in the *future* you might
want to look at the void casts.  Some of them are not required and
others are buggy code.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
