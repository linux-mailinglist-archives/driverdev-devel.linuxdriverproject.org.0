Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1752B305EA3
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 15:50:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A77C88691D;
	Wed, 27 Jan 2021 14:50:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YFokArhz6T5f; Wed, 27 Jan 2021 14:50:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2AA598683A;
	Wed, 27 Jan 2021 14:50:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC8B61BF301
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 14:50:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A0B3C871C9
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 14:50:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id be6kL6itoxh4 for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 14:50:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8733C871D2
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 14:50:17 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10REhiJk166078;
 Wed, 27 Jan 2021 14:50:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=GR3gjkFudMAhVS5F0hZMK0pjUOiBdqiv9A/SI2RyZcA=;
 b=ZfflQAxdptFiUwkg/TNONvt9EJ9+kvoTG9/aeTykFb4weA8w8RuQ9tafnq5UCv9iONHa
 naIwFogLp0LVNMurgcqikCt+lAgr53Hk+yjZBBPs7aLqQPlsoGGFhkXv/BHBlVxNqs1B
 6r29XO4Iwap0QGQqVysKqsFNSmGf1riBI3JUgK8M0HMrNnr9xk+lXg65hGw468eiK2UJ
 Rzs/2AMvxEjuWdRXnGiJ9hsa0H22+Oa8nEc3yPyoqVxk8NuEKeAEGE+KvBz5A/0tjId7
 TCpIx9PiYESfPPsXzZUZz621FXWI6/J7o8yWvjuwxiEslyGQLzLXN2sRobfOS8hbxTLD Uw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 3689aaqpuf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 27 Jan 2021 14:50:14 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10REaAuv052722;
 Wed, 27 Jan 2021 14:50:09 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 368wqxxfq6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 27 Jan 2021 14:50:08 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 10REnv6D009660;
 Wed, 27 Jan 2021 14:49:58 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 27 Jan 2021 06:49:56 -0800
Date: Wed, 27 Jan 2021 17:49:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v10] staging: fbtft: add tearing signal detect
Message-ID: <20210127144946.GF2696@kadam>
References: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
 <YBFv+12xfsoxacDb@kroah.com> <20210127220809.000026fb@gmail.com>
 <YBF08Xf7qaZx3YZ1@kroah.com> <20210127221708.00002568@gmail.com>
 <YBF30EEUkhEMY5ti@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBF30EEUkhEMY5ti@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9876
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 phishscore=0
 adultscore=0 mlxlogscore=999 malwarescore=0 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101270082
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9876
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 adultscore=0
 lowpriorityscore=0 mlxlogscore=999 clxscore=1011 phishscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101270082
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 mh12gx2825@gmail.com, sbrivio@redhat.com, oliver.graute@kococonnector.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Joe Perches <joe@perches.com>, carlis <zhangxuezhi3@gmail.com>,
 Andy Whitcroft <apw@canonical.com>, colin.king@canonical.com,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 27, 2021 at 03:25:20PM +0100, Greg KH wrote:
> On Wed, Jan 27, 2021 at 10:17:08PM +0800, carlis wrote:
> > On Wed, 27 Jan 2021 15:13:05 +0100
> > Greg KH <gregkh@linuxfoundation.org> wrote:
> > 
> > > On Wed, Jan 27, 2021 at 10:08:09PM +0800, carlis wrote:
> > > > On Wed, 27 Jan 2021 14:51:55 +0100
> > > > Greg KH <gregkh@linuxfoundation.org> wrote:
> > > >   
> > > > > On Wed, Jan 27, 2021 at 09:42:52PM +0800, Carlis wrote:  
> > > > > > From: zhangxuezhi <zhangxuezhi1@yulong.com>
> > > > > > 
> > > > > > For st7789v ic,when we need continuous full screen refresh, it
> > > > > > is best to wait for the TE signal arrive to avoid screen tearing
> > > > > > 
> > > > > > Signed-off-by: zhangxuezhi <zhangxuezhi1@yulong.com>    
> > > > > 
> > > > > Please slow down and wait at least a day between patch
> > > > > submissions, there is no rush here.
> > > > > 
> > > > > And also, ALWAYS run scripts/checkpatch.pl on your submissions, so
> > > > > that you don't have a maintainer asking you about basic problems,
> > > > > like are in this current patch :(
> > > > > 
> > > > > thanks,
> > > > > 
> > > > > greg k-h  
> > > > 
> > > > hi,
> > > >   This is my first patch contribution to Linux, so some of the rules
> > > > are not very clear .In addition, I can confirm that before sending
> > > > patch, I check it with checkPatch.py every time.Thank you very much
> > > > for your help  
> > > 
> > > Please read Documentation/SubmittingPatches which has a link to the
> > > checklist and other documentation you should read.
> > > 
> > > And I doubt you are running checkpatch on your submission, as there is
> > > obvious coding style issues in it.  If so, please provide the output
> > > as it must be broken :(
> > > 
> > > thanks,
> > > 
> > > greg k-h
> > hi, the patch v11 checkpatch.pl output is below:
> > 
> > carlis@bf-rmsz-10:~/work/linux-kernel/linux$ ./scripts/checkpatch.pl
> > 0001-staging-fbtft-add-tearing-signal-detect.patch total: 0 errors, 0
> > warnings, 0 checks, 176 lines checked
> > 
> > 0001-staging-fbtft-add-tearing-signal-detect.patch has no obvious style
> > problems and is ready for submission.
> 
> Wow, my apologies!
> 
> Andy and Joe, there's something wrong here that is missing the fact that
> a line is being indented with spaces and not tabs in the patch
> at https://lore.kernel.org/r/1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com
> 
> Any ideas what broke?
> 

    /*Tearing Effect Line On*/

Comments are the exception to the "no spaces at the start of a line"
rule.  I was expecting that the kbuild-bot would send a Smatch warning
for inconsistent indenting, but comments are not counted there either.

I'm sort of surprised that we don't have checkpatch rule about the
missing space characters.  It should be: "/* Tearing Effect Line On */".

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
