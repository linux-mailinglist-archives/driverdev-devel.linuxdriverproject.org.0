Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E0C19BD6F
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 10:17:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 78AB02047F;
	Thu,  2 Apr 2020 08:17:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RUHi3KIJf1ug; Thu,  2 Apr 2020 08:17:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 282742045D;
	Thu,  2 Apr 2020 08:17:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E0FE71BF3AF
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 08:17:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DDE1987F34
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 08:17:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m7NVDQc+X4FS for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 08:17:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 46EA187D9D
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 08:17:40 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0328HdpD077946;
 Thu, 2 Apr 2020 08:17:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=WeanoaLBqDrBq+dsLz0IwCLWX8D0EvqVHKxzG85jwu4=;
 b=xplAvYEEBIYprbeGpiTuBI+T5ZKx8vHh+tczZOxIv7ipgoBwuEHEVkIy/6i43r5US1VE
 kWvnaG6P66KtEv/94wKgSodPPMqhqbHbx5pHcy/chSF2qvJ6SCjyIQhjF5vezy9yhJQG
 BBJAL4SBCek519hT7auJfr4n10Ra5MB4frcWKbwCjpHSx0PCNbtsN0GDElYSaLJYdSxy
 PL11OMw80qlgUjfeh34SxwVcUndy9pvUb+EATdfhbpG2cjWxs24CPgzksHJEVcM3xaBU
 0e9+iHUIUnh4rh+wlOFEIkUFEmkyDSN01TC90oWy8QEfKmgtXryIAWbPbTNgBKktRWuz Cw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 303cev9u4u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 08:17:39 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0328H0ak022089;
 Thu, 2 Apr 2020 08:17:39 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 302g2j3nwm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 08:17:38 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0328HcC3021911;
 Thu, 2 Apr 2020 08:17:38 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 02 Apr 2020 01:17:37 -0700
Date: Thu, 2 Apr 2020 11:17:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: aimannajjar <aiman.najjar@hurranet.com>
Subject: Re: [PATCH v2 1/5] staging: rtl8712: fix checkpatch long-line warning
Message-ID: <20200402081730.GE2001@kadam>
References: <20200327080429.GB1627562@kroah.com>
 <cover.1585353747.git.aiman.najjar@hurranet.com>
 <6a4d94b4e5446f4665dc11290ed1351661554f01.1585353747.git.aiman.najjar@hurranet.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6a4d94b4e5446f4665dc11290ed1351661554f01.1585353747.git.aiman.najjar@hurranet.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=581
 spamscore=0 mlxscore=0
 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020075
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 adultscore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 suspectscore=0 mlxscore=0 impostorscore=0 mlxlogscore=628 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020075
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
 Larry Finger <Larry.Finger@lwfinger.net>, linux-kernel@vger.kernel.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 27, 2020 at 08:08:07PM -0400, aimannajjar wrote:
> This patch fixes these two long-line checkpatch warnings
> in rtl871x_xmit.c:
> 
> WARNING: line over 80 characters
> \#74: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:74:
> +       * Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,
> 
> WARNING: line over 80 characters
> \#79: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:79:
> +               kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4, GFP_ATOMIC);
> 
> Signed-off-by: aimannajjar <aiman.najjar@hurranet.com>
                 ^^^^^^^^^^^

You need to use your proper legal name here.  Please capitalize normally
like you would on a legal document.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
