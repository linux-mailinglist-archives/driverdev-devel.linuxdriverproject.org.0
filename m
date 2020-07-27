Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C694F22ED26
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 15:24:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 53DE7204EE;
	Mon, 27 Jul 2020 13:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3p9sHJEvRdBg; Mon, 27 Jul 2020 13:24:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E38DE204A4;
	Mon, 27 Jul 2020 13:24:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A6B801BF322
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 13:24:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A35168773D
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 13:24:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kaalc8yjCvmS for <devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 13:24:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1C79987733
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 13:24:08 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06RDLdO7150875;
 Mon, 27 Jul 2020 13:24:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=J00Dw6rpyqimDdVj4d/3x8SmLFCrRXi5rHz9LE8QPl8=;
 b=ZLd8P4xptCJtLnXH7hVZJo6+EYUUPJg5jjmFENfkV0N6RnsZJAdPGJnxcpi+X3eMn9NW
 ocyHuKsaTJi3yL5lSggLc2T3B3H76ODbG9Oxjg/N5A30iFb5g8nNO34IRb8dxAEcLSUO
 jTEFt3TtF+lC1rQS6OuzXzf23uuW5gY5NSNlUUizcT51ZS7qDAT57YV0C4J50RO8uRCf
 GQCVeB+p2J1EuGgB43MibVmOYfh3Fir4JbserOBZtwgUMtM+sClwvDcvWqE9m5MYOrbL
 ihEdlti8PFskutRHX2/4uAMidhQzbsB/mnERnmLWmSYiCer2RooKPKXNnA+YlZCe+BoN YA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 32hu1j9g0j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Jul 2020 13:24:07 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06RDNGeZ119195;
 Mon, 27 Jul 2020 13:24:07 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 32hu5qpja2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jul 2020 13:24:06 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06RDNxgQ028115;
 Mon, 27 Jul 2020 13:23:59 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 27 Jul 2020 06:23:59 -0700
Date: Mon, 27 Jul 2020 16:23:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Dinghao Liu <dinghao.liu@zju.edu.cn>
Subject: Re: [PATCH] Staging: rtl8188eu: rtw_mlme: Fix uninitialized variable
 authmode
Message-ID: <20200727132351.GF1913@kadam>
References: <20200724122957.30411-1-dinghao.liu@zju.edu.cn>
 <20200727114451.GA1913@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200727114451.GA1913@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9694
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxlogscore=999 mlxscore=0
 suspectscore=18 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007270098
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9694
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 mlxlogscore=999
 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0 phishscore=0
 suspectscore=18 bulkscore=0 mlxscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007270098
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
 kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, Stefano Brivio <sbrivio@redhat.com>,
 Shreeya Patel <shreeya.patel23498@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I review things in the order that they appear in my inbox so I hadn't
seen Greg and Larry's comments.  You've now stumbled into an area of
politics where you have conflicting reviews...  :P  Fortunately, we're
all of us reasonable people.

I think your patch is correct in that it is what the original coder
intended.  You just need to sell the patch correctly in the commit
message.  The real danger of the original code would be if "authmode" is
accidentally 0x30 or 0xdd just because it was uninitialized.  Setting it
to zero ensures that it is not and it also matches how this is handled
in the rtl8723bs driver.  This matches the original author's intention.

So:

1) Re-write the commit message.

    The variable authmode can be uninitialized.  The danger would be
    if it equals _WPA_IE_ID_ (0xdd) or _WPA2_IE_ID_ (0x33).  We can
    avoid this by setting it to zero instead.  This is the approach that
    was used in the rtl8723bs driver.

2) Add a fixes tag.
   Fixes: 7b464c9fa5cc ("staging: r8188eu: Add files for new driver - part 4")

3) Change the commit to Larry's style with the "else if" and "else".
   Sometimes people just disagree about style so it's easiest to go with
   whatever the maintainer (Larry) wants.  It's not worth debating one
   way or the other so just redo it.

Then resend.  Google for "how to send a v2 patch" to get the right
format.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
