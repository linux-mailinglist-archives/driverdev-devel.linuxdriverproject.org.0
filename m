Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FBC28A094
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 15:56:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9098020494;
	Sat, 10 Oct 2020 13:56:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oGWZu+bgmfmo; Sat, 10 Oct 2020 13:56:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7612E2048B;
	Sat, 10 Oct 2020 13:56:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC5B01BF271
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 13:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D8613875A9
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 13:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BJylkC2Ubwcx for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 13:56:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 30AC787550
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 13:56:17 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09ADuDaE007956;
 Sat, 10 Oct 2020 13:56:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=i12gKFPdJZF7+MNGak6f/dG0rwxLvrt1hj8h/auKFIM=;
 b=i3B+00Fw5SbY6EVbiQNLLPR6tws9qmpxGO+ceQ9+WCQo8jZr+1wh0Str4khZHDYbkulQ
 mUlfE9rcwyem83dZ3H332uHmzlnTMeaLtwzXfA6FaSzN10gsjUx2+RfsPNBQFWl1mNYN
 PZken3BLB3B+Y/3eJqxhfr7GdnztnvxOWC0ZgKr9cubmax2akxHUIKIcpfnmPjCwhxfd
 u3a3f7XlF7Gd+eUXeR6HZkAoIzd7opEhgJU+C5Ds2gtB3h8C8/RTUhEciREQXyCy5RJb
 of+1wRTznOsjKJ+h3AW9op3aR1GCjCQQ1bWuRe9r28cZVQektraeeE2GKGPbdd6bLpWd zA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 3434wk8rfe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 10 Oct 2020 13:56:13 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09ADpOqP125033;
 Sat, 10 Oct 2020 13:54:12 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 34349jbcjx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 10 Oct 2020 13:54:12 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 09ADsBhJ011167;
 Sat, 10 Oct 2020 13:54:11 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 10 Oct 2020 06:54:10 -0700
Date: Sat, 10 Oct 2020 16:54:03 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH 2/8] staging: wfx: check memory allocation
Message-ID: <20201010135403.GT18329@kadam>
References: <20201009171307.864608-1-Jerome.Pouiller@silabs.com>
 <20201009171307.864608-3-Jerome.Pouiller@silabs.com>
 <874kn31be2.fsf@codeaurora.org> <2852079.TFTgQsWz4P@pc-42>
 <20201010131810.GS18329@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010131810.GS18329@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9769
 signatures=668681
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 mlxlogscore=999 adultscore=0 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010100130
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9769
 signatures=668681
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 mlxscore=0
 malwarescore=0 phishscore=0 suspectscore=0 impostorscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 bulkscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010100131
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 10, 2020 at 04:18:11PM +0300, Dan Carpenter wrote:
> On Sat, Oct 10, 2020 at 02:07:13PM +0200, J=E9r=F4me Pouiller wrote:
> > On Friday 9 October 2020 20:51:01 CEST Kalle Valo wrote:
> > > CAUTION: This email originated from outside of the organization. Do n=
ot click links or open attachments unless you recognize the sender and know=
 the content is safe.
> > > =

> > > =

> > > Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> > > =

> > > > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > > >
> > > > Smatch complains:
> > > >
> > > >    main.c:228 wfx_send_pdata_pds() warn: potential NULL parameter d=
ereference 'tmp_buf'
> > > >    227          tmp_buf =3D kmemdup(pds->data, pds->size, GFP_KERNE=
L);
> > > >    228          ret =3D wfx_send_pds(wdev, tmp_buf, pds->size);
> > > >                                          ^^^^^^^
> > > >    229          kfree(tmp_buf);
> > > >
> > > > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > > > ---
> > > >  drivers/staging/wfx/main.c | 8 +++++++-
> > > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/wfx/main.c b/drivers/staging/wfx/main.c
> > > > index df11c091e094..a8dc2c033410 100644
> > > > --- a/drivers/staging/wfx/main.c
> > > > +++ b/drivers/staging/wfx/main.c
> > > > @@ -222,12 +222,18 @@ static int wfx_send_pdata_pds(struct wfx_dev =
*wdev)
> > > >       if (ret) {
> > > >               dev_err(wdev->dev, "can't load PDS file %s\n",
> > > >                       wdev->pdata.file_pds);
> > > > -             return ret;
> > > > +             goto err1;
> > > >       }
> > > >       tmp_buf =3D kmemdup(pds->data, pds->size, GFP_KERNEL);
> > > > +     if (!tmp_buf) {
> > > > +             ret =3D -ENOMEM;
> > > > +             goto err2;
> > > > +     }
> > > >       ret =3D wfx_send_pds(wdev, tmp_buf, pds->size);
> > > >       kfree(tmp_buf);
> > > > +err2:
> > > >       release_firmware(pds);
> > > > +err1:
> > > >       return ret;
> > > >  }
> > > =

> > > A minor style issue but using more descriptive error labels make the
> > > code more readable and maintainable, especially in a bigger function.
> > > For example, err2 could be called err_release_firmware.
> > > =

> > > And actually err1 could be removed and the goto replaced with just
> > > "return ret;". Then err2 could be renamed to a simple err.
> > =

> > It was the case in the initial code. However, I have preferred to not
> > mix 'return' and 'goto' inside the same function. Probably a matter of
> > taste.
> >
> =

> Ideally you can read a function from top to bottom and understand with
> out skipping around.  Imagine if novels were written like that "goto
> bottom_of_page;" but then at the bottom it just said "Just kidding".
> "return ret;" is more readable than "goto err;"

More unasked for exposition:  "goto err;" is too vague.  It could be one
of three things.  1)  Do nothing (like this code).  2)  Do something
specific (choose a better name like goto unlock).  3) Do everything.
Do everything code is the most buggy style of error handling.

The common bug introduced by type 1 and 2 are "Forgot to set the error
code" bugs.  Type 3 is a whole nother level of bugginess.  Too much bugs
to explain.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
