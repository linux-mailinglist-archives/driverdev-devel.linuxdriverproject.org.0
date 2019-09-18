Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BF0B6016
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 11:27:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8AF6686499;
	Wed, 18 Sep 2019 09:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mQbPtBEo5lya; Wed, 18 Sep 2019 09:27:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E4D984C20;
	Wed, 18 Sep 2019 09:27:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 238E21BF41E
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 09:27:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F75E84C20
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 09:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vE7tbdeJ5yBQ for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 09:27:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8FC5384B37
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 09:27:10 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8I98uK0036001;
 Wed, 18 Sep 2019 09:27:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=5W1fcvEd99/AIOIxEczHb9EgxxrI9ZKCVn9mLpgE1DY=;
 b=lMkuL9E22/fDHGZGYGdq4UeC5SmsvGJPm1jemC461wOrRlCJRuuu/+/JcgNExra+s8Mf
 Z/tF3XlJX6OyYs2M7n7ZaUo2Z5fZgUgou5AYx75K0JBluBD3nmV1ot/5EEKrIUJV6esR
 dD/0NnDsuB6Duc2+tQrLR79ZpIcpuENYTvDGuvJfYFVWswA5ALy/O9+jdGXfFzRo2raa
 4tv4hudsFVUcsQd47Wwf0ZX90JmZXCOtKpR/pWEp8zA2e/CqqoT0piBKKTps2IMbCvRA
 wjd4xIIL6HUeWEKOxR3ffNdvNazYCzbbkwvM2MM9y6mi9ZLva+mZ8s9zuW1GvvLMWWw1 fA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2v385dtj58-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Sep 2019 09:27:09 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8I994QC176154;
 Wed, 18 Sep 2019 09:25:08 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2v37mm8fts-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Sep 2019 09:25:08 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8I9P56v026455;
 Wed, 18 Sep 2019 09:25:05 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 18 Sep 2019 02:25:04 -0700
Date: Wed, 18 Sep 2019 12:24:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ju Hyung Park <qkrwngud825@gmail.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
Message-ID: <20190918092405.GC2959@kadam>
References: <8998.1568693976@turing-police>
 <20190917053134.27926-1-qkrwngud825@gmail.com>
 <20190917054726.GA2058532@kroah.com>
 <CGME20190917060433epcas2p4b12d7581d0ac5477d8f26ec74e634f0a@epcas2p4.samsung.com>
 <CAD14+f1adJPRTvk8awgPJwCoHXSngqoKcAze1xbHVVvrhSMGrQ@mail.gmail.com>
 <004401d56dc9$b00fd7a0$102f86e0$@samsung.com>
 <20190918061605.GA1832786@kroah.com>
 <20190918063304.GA8354@jagdpanzerIV>
 <20190918082658.GA1861850@kroah.com>
 <CAD14+f24gujg3S41ARYn3CvfCq9_v+M2kot=RR3u7sNsBGte0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD14+f24gujg3S41ARYn3CvfCq9_v+M2kot=RR3u7sNsBGte0Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9383
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909180094
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9383
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909180094
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Namjae Jeon <namjae.jeon@samsung.com>, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, alexander.levin@microsoft.com,
 sergey.senozhatsky@gmail.com, linux-fsdevel@vger.kernel.org,
 sj1557.seo@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 18, 2019 at 06:01:09PM +0900, Ju Hyung Park wrote:
> On Wed, Sep 18, 2019 at 5:33 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > He did?  I do not see a patch anywhere, what is the message-id of it?
> 
> I'm just repeating myself at this point, but again, I'm more than
> willing to work on a patch.
> I just want to make it clear on how should I.

Put it in drivers/staging/sdfat/.

But really we want someone from Samsung to say that they will treat
the staging version as upstream.  It doesn't work when people apply
fixes to their version and a year later back port the fixes into
staging.  The staging tree is going to have tons and tons of white space
fixes so backports are a pain.  All development needs to be upstream
first where the staging driver is upstream.  Otherwise we should just
wait for Samsung to get it read to be merged in fs/ and not through the
staging tree.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
