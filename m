Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A746D18C83
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 May 2019 16:58:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA93886EDA;
	Thu,  9 May 2019 14:58:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2apW3HoUMTjj; Thu,  9 May 2019 14:58:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A511C8784B;
	Thu,  9 May 2019 14:58:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E13191BF2BB
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 14:58:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DDF4C30FCB
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 14:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qQJ+LlHx3z6z for <devel@linuxdriverproject.org>;
 Thu,  9 May 2019 14:58:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 6C3F8229A3
 for <devel@driverdev.osuosl.org>; Thu,  9 May 2019 14:58:03 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x49EclOd195809;
 Thu, 9 May 2019 14:58:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=fafVOkpgX5n0qVIUau1COA/+UExm/4T8FtAm/2yfzio=;
 b=RkTSwtOPG1pIao9g46gUO109raaXGwev5wM2SWmG3o1RGI7WqIDvsMBSi1ReHjKn2DXi
 NBaDB3VszjIn17JTuIL60ShZP9KhkVUVXX6g8TQyuNG7ttT/CgvWUv6CHnKLnqCYJJUo
 ZDDb8BIfE5Gw60NT6k05KPAOe4lwpAr7RJdNK0LXV+2LoM53KUGwy8Be+IBg4Xrupjis
 0xyU5OFvCjweCoXeSYBOGwFlPeZpJ4PNAabbcrhty07mRsexmnnkLWy1PHANwOmBJ6OD
 xT2kAztKQYUooyWri8N7zDsyC8yJidQoq9IeKXWAa4MnrsriiuVHkMcvKe2PyJj5/weD pA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2s94bgbewc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 May 2019 14:58:00 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x49Et5u5081350;
 Thu, 9 May 2019 14:55:59 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2s94bau3hv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 May 2019 14:55:59 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x49EtwSH002463;
 Thu, 9 May 2019 14:55:58 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 09 May 2019 07:55:57 -0700
Date: Thu, 9 May 2019 17:55:52 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Matt Sickler <Matt.Sickler@daktronics.com>
Subject: Re: [PATCH v2] kpc_i2c: Remove unused file
Message-ID: <20190509145552.GA16030@kadam>
References: <SN6PR02MB4016E93EC94A46E6C79A76DBEE330@SN6PR02MB4016.namprd02.prod.outlook.com>
 <20190509141243.GE21059@kadam>
 <SN6PR02MB401611F8B4C2FDC9DEE82B58EE330@SN6PR02MB4016.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR02MB401611F8B4C2FDC9DEE82B58EE330@SN6PR02MB4016.namprd02.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9251
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905090086
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9251
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905090086
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "'gregkh@linuxfoundation.org'" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 09, 2019 at 02:47:50PM +0000, Matt Sickler wrote:
> >> ---
> >  ^^^
> >
> >Here.
> 
> Noted.  I just looked up a "v2" patch in the mailing list
> archive to see what that looks like.  I'll try to do that
> next time.
> 

A few people/subsystems (DRM) put the change log in the commit message
but that's pretty weird and I don't know if they do it on purpose or
they're just not aware how to do it properly...  :P

When it's under the --- then it isn't stored in the permanent git log.

> >
> >There is something else wrong with the patch and it's corrupted a bit or
> >something.  Please read the first paragraph of Documentation/process/email-
> >clients.rst
> 
> Ugh.  I'm about to throw Outlook in the trash and just use
> my personal email account.
> I know most subsystem maintainers don't accept pull requests
> but Daktronics does have a github account that I could push
> my changes to and use git-request-pull to ask Greg to pull
> from.  Greg, would that be an acceptable solution?  If not,
> I can continue struggle-bussing with Outlook.

You can't just use git send-email?  Outlook is going to give you
headaches forever.  I use mutt, but one subsystem only accept patches
from git send-email so I have to add a fake "X-Mailer: git-send-email"
header to my patches...

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
