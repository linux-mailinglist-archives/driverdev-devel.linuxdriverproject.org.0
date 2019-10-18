Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62667DC3FF
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Oct 2019 13:30:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 455B2887C1;
	Fri, 18 Oct 2019 11:30:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3qhf5tNtKkV8; Fri, 18 Oct 2019 11:30:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 44715887B7;
	Fri, 18 Oct 2019 11:30:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F1C301BF27F
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 11:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EAB8A86F0A
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 11:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rKd_tuUOjXWe for <devel@linuxdriverproject.org>;
 Fri, 18 Oct 2019 11:30:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 79CB686F01
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 11:30:27 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9IBSjdL182948;
 Fri, 18 Oct 2019 11:30:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=mmN3Nf8EOZFfA0GztjsmQxxSmIoUSxz/s0RPgOyHAuY=;
 b=SFHtrhEh5euJP8Z0Vy8Jg3DLSaX5x1xY/SNso1ebQEsKPEe9EchYEY8NlSmLMd6vpW2F
 Md76CFSYFJQpAOX/XMlq6mmOeSWRQ32kPmQaefELsfgcsd5cdpUak3yokjoRXYDC4k6m
 F9wmSt2AcreUEVif5bdAw+srYqHsDimxGuJ2JIo2B1EqOSMkYdsbBiDZpbxQwoNHewvr
 n5TwpLPCC+2LCM9WgDl2sCpIhN/3Hs1zr+E7EOWsjMkwa8hGfc3ZNo2mB/BUdLEh+tSU
 /Smb1c6Z8D8eSJQqX5s6NLVmiYHutdyIaOkL5UZeWwq0vQBiT1ChSVphSbDssNwnoEmk Ew== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2vq0q4bab2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Oct 2019 11:30:26 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9IBSpoN174326;
 Fri, 18 Oct 2019 11:30:26 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2vq0dxcbws-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Oct 2019 11:30:26 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9IBUPaV002334;
 Fri, 18 Oct 2019 11:30:25 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 18 Oct 2019 11:30:24 +0000
Date: Fri, 18 Oct 2019 14:30:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: reduce stack usage of
 rtw_cfg80211_unlink_bss
Message-ID: <20191018113017.GG24678@kadam>
References: <20191018104837.23246-1-sudipm.mukherjee@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018104837.23246-1-sudipm.mukherjee@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9413
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=885
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910180111
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9413
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=985 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910180111
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 18, 2019 at 11:48:37AM +0100, Sudip Mukherjee wrote:
> The build of xtensa allmodconfig gives warning of:
> In function 'rtw_cfg80211_unlink_bss':
> warning: the frame size of 1136 bytes is larger than 1024 bytes
> 
> Instead of having 'select_network' structure as a variable use it as a
> pointer.
> 
> Signed-off-by: Sudip Mukherjee <sudipm.mukherjee@gmail.com>

Heh.  Nice.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
