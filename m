Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1799F31EBDF
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 16:55:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAF5D60664
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 15:55:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eTPDNS7ThWCH for <lists+driverdev-devel@lfdr.de>;
	Thu, 18 Feb 2021 15:55:00 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id F3534605A1; Thu, 18 Feb 2021 15:54:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95B8C60683;
	Thu, 18 Feb 2021 15:52:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 22EE51BF391
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 15:52:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F5E386EA6
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 15:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ytal9PWT4rrE for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 15:52:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2B88F86EA4
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 15:52:12 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IFfXiG164203;
 Thu, 18 Feb 2021 15:52:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=EckJQMJCIrN0lgGMXmDPFBCLlGKJ6+RiOfY/TQd09T0=;
 b=Be2Rt6vZJe/tUxWhefIS/tlesADf2JYUrjVcHNv7jDP/MttIIG3sQpX7VvK6xhnZLVlL
 vu3/fVwnNDJWPNu644C6Myl8rwoO/GiXskRXgP7WtA56nW+T4OnL6xZKzIQAyMgUCRbE
 7xCIGI9Hdhtw1pydDlUGGw0HAFkaXA+aV5Nvwg0o2klRL//bVK1VbOoHeRe+Ti4/q/gr
 1b4k2kzoPJwegI56WEJDfsBnK3Wl+8GG+P1kfFZ2Q8QuIriW+PNZLLP70TR9VzrTHsme
 /3KFGitWA5j4ImluALoaSuZ9r7WERqkvNWSdc7Q/0WGgpDzSBU74Ffr2YAZ00/2fCGGy IA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 36p49bej91-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 15:52:12 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IFoTiJ115432;
 Thu, 18 Feb 2021 15:52:10 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 36prbqx0v3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 15:52:10 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11IFq8MT022652;
 Thu, 18 Feb 2021 15:52:09 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 18 Feb 2021 07:52:08 -0800
Date: Thu, 18 Feb 2021 18:51:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Atul Gopinathan <atulgopinathan@gmail.com>
Subject: Re: [PATCH v2 1/2] staging: comedi: cast function output to assigned
 variable type
Message-ID: <20210218155159.GL2087@kadam>
References: <20210218084404.16591-1-atulgopinathan@gmail.com>
 <8f73b7a1-02dd-32ef-8115-ad0f38868692@mev.co.uk>
 <20210218104755.GA7571@atulu-nitro> <YC5bsXa+1KSuIh+v@kroah.com>
 <20210218125220.GA19456@atulu-nitro>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218125220.GA19456@atulu-nitro>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 mlxscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102180139
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 impostorscore=0 mlxlogscore=999
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1011 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102180138
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 06:22:20PM +0530, Atul Gopinathan wrote:
> On Thu, Feb 18, 2021 at 01:21:05PM +0100, Greg KH wrote:
> > On Thu, Feb 18, 2021 at 04:17:55PM +0530, Atul Gopinathan wrote:
> > > On Thu, Feb 18, 2021 at 10:31:15AM +0000, Ian Abbott wrote:
> > > > On 18/02/2021 08:44, Atul Gopinathan wrote:
> > > > > Fix the following warning generated by sparse:
> > > > > 
> > > > > drivers/staging//comedi/comedi_fops.c:2956:23: warning: incorrect type in assignment (different address spaces)
> > > > > drivers/staging//comedi/comedi_fops.c:2956:23:    expected unsigned int *chanlist
> > > > > drivers/staging//comedi/comedi_fops.c:2956:23:    got void [noderef] <asn:1> *
> > > > > 
> > > > > compat_ptr() has a return type of "void __user *"
> > > > > as defined in "include/linux/compat.h"
> > > > > 
> > > > > cmd->chanlist is of type "unsigned int *" as defined
> > > > > in drivers/staging/comedi/comedi.h" in struct
> > > > > comedi_cmd.
> > > > > 
> > > > > Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
> > > > > ---
> > > > >   drivers/staging/comedi/comedi_fops.c | 2 +-
> > > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> > > > > index e85a99b68f31..fc4ec38012b4 100644
> > > > > --- a/drivers/staging/comedi/comedi_fops.c
> > > > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > > > @@ -2953,7 +2953,7 @@ static int get_compat_cmd(struct comedi_cmd *cmd,
> > > > >   	cmd->scan_end_arg = v32.scan_end_arg;
> > > > >   	cmd->stop_src = v32.stop_src;
> > > > >   	cmd->stop_arg = v32.stop_arg;
> > > > > -	cmd->chanlist = compat_ptr(v32.chanlist);
> > > > > +	cmd->chanlist = (unsigned int __force *)compat_ptr(v32.chanlist);
> > > > >   	cmd->chanlist_len = v32.chanlist_len;
> > > > >   	cmd->data = compat_ptr(v32.data);
> > > > >   	cmd->data_len = v32.data_len;
> > > > > 
> > > > 
> > > > This patch and the other one in your series clash with commit 9d5d041eebe3
> > > > ("staging: comedi: comedi_fops.c: added casts to get rid of sparse
> > > > warnings") by B K Karthik.
> > > 
> > > Oh I see. Not sure if this is the right place to ask, but which tree and
> > > branch should one work with when messing with the code in staging/
> > > directory? (wanted to avoid such clashes in future)
> > 
> > staging-next is the best one to use from the staging.git tree.  But as
> > the above commit was merged in 5.9-rc1, way back in July of last year, I
> > have no idea what tree you are currently using to not hit that...
> 
> I'm using the staging tree alright, cloned it yesterday. Except I used the
> --depth parameter. I believe that is the culprit. How bad a mistake is
> that?
> 
> (Why depth? I'm currently staying in a remote area where internet
> download speeds are less than 100Kbps. I tried a normal git clone of
> the staging tree and it's estimated time was more than half a day. Not
> to mention, it fails due to loss of connection midway every time)

I live in Africa and used to have this problem before Africa got
connected to fibre optic.  Greg's suggestion of using `wget -c` to
download a git bundle is a good one.  However, in my experience
`wget -c` is not 100% accurate on super flakey internet.  Then if it
fails the verify will fail and you'll have to re-download the entire
thing.

If you want I have a different option.  What I made a clone of Linus's
tree.  Then I did:

tar cvvf linux.tar linux/.git
for i in $(seq 0 116) ; do dd if=linux.tar of=linux.tar.${i} ibs=1M count=20 skip=$((20 * $i)) ; done

Now I have put those on a private webserver I have.  You can download
them by doing:

for i in $(seq 0 116) ; do wget -c http://51.158.124.72/kernel_split/linux.tar.${i} ; done
md5sum * > my_md5s
wget http://51.158.124.72/kernel_split/md5sums
diff -u md5sum my_md5s

Re-download files which don't match

for i in $(seq 0 116) ; do cat linux.tar.${i} >> linux.tar ; done
cat linux.tar | tar xv
cd linux
git reset --hard

Let me know if this works for you.  I will leave the source up for a
week or two before I delete it.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
