Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 483BB1E7766
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 09:47:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C84BB88397;
	Fri, 29 May 2020 07:47:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kYQoxPCZ5UX8; Fri, 29 May 2020 07:47:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 57F7E8838F;
	Fri, 29 May 2020 07:47:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C8A3A1BF366
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 07:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B5D6725C73
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 07:47:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iveFs-G+VfkI for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 07:47:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id A8EAF21F69
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 07:47:07 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04T7gDK7052459;
 Fri, 29 May 2020 07:47:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=R1b6Z/cS+2cKAb9ZzUF0bScnrDJKUJvJek65J+6Cp4o=;
 b=lkbV6fTOJHPRF0S5F4BTWZslPaWtPxww9jlJxiJfXgAh9mva04BJXARAaoxxua4/Oi7y
 H8FfW88HKlfc84u3erjsACFov8w/zfP+rD4U+54zSWzYt9uQAmyqlgAXqGkzIu6sOc//
 RQkLNCGZGrvXsTZkb1AIxLXL5Vm+VxmoOiR66V6/trmCKzA5Oiz2lk3AdMDlMrte3Pbp
 Q9cHxA9VREwG1toZGOCmMf6GWSggag1NDHRzuWiiz88FQHXoaHOACZm79EV8t23B8YcW
 zRe/rjR4PUF7h59fheWodGjE9PaK8E6xfEohFXecF7xNod6r0dVq8uc83/vM/6/EneGN gA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 318xbk8y7t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 29 May 2020 07:47:06 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04T7bhit111532;
 Fri, 29 May 2020 07:47:06 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 317j5xrahx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 29 May 2020 07:47:06 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04T7l52r000489;
 Fri, 29 May 2020 07:47:05 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 29 May 2020 00:47:04 -0700
Date: Fri, 29 May 2020 10:46:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Souptick Joarder <jrdr.linux@gmail.com>
Subject: Re: [PATCH] staging: gasket: Convert get_user_pages*() -->
 pin_user_pages*()
Message-ID: <20200529074658.GM30374@kadam>
References: <1590613362-27495-1-git-send-email-jrdr.linux@gmail.com>
 <20200528110408.GJ30374@kadam>
 <CAFqt6zaKWBQTy9XfvxwVAvzGS+gz9Qv1gL8Bv1VxLq+THYf+Aw@mail.gmail.com>
 <CAFqt6zbtg0NWbAnDGPC0ZddEiTeohz=8JN+S_KxqM0bnnvar3g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFqt6zbtg0NWbAnDGPC0ZddEiTeohz=8JN+S_KxqM0bnnvar3g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9635
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 suspectscore=0
 mlxlogscore=999 mlxscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005290060
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9635
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 cotscore=-2147483648
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005290060
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 John Hubbard <jhubbard@nvidia.com>, linux-kernel@vger.kernel.org,
 Rob Springer <rspringer@google.com>, Greg KH <gregkh@linuxfoundation.org>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 29, 2020 at 11:57:09AM +0530, Souptick Joarder wrote:
> On Fri, May 29, 2020 at 11:46 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
> >
> > On Thu, May 28, 2020 at 4:34 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > >
> > > On Thu, May 28, 2020 at 02:32:42AM +0530, Souptick Joarder wrote:
> > > > This code was using get_user_pages_fast(), in a "Case 2" scenario
> > > > (DMA/RDMA), using the categorization from [1]. That means that it's
> > > > time to convert the get_user_pages_fast() + put_page() calls to
> > > > pin_user_pages_fast() + unpin_user_page() calls.
> > >
> > > You are saying that the page is used for DIO and not DMA, but it sure
> > > looks to me like it is used for DMA.
> >
> > No, I was referring to "Case 2" scenario in change log which means  it is
> > used for DMA, not DIO.

You can't use pin_user_pages() for DMA.  This was second reason that I
was confused.

mm/gup.c
  2863  /**
  2864   * pin_user_pages_fast() - pin user pages in memory without taking locks
  2865   *
  2866   * @start:      starting user address
  2867   * @nr_pages:   number of pages from start to pin
  2868   * @gup_flags:  flags modifying pin behaviour
  2869   * @pages:      array that receives pointers to the pages pinned.
  2870   *              Should be at least nr_pages long.
  2871   *
  2872   * Nearly the same as get_user_pages_fast(), except that FOLL_PIN is set. See
  2873   * get_user_pages_fast() for documentation on the function arguments, because
  2874   * the arguments here are identical.
  2875   *
  2876   * FOLL_PIN means that the pages must be released via unpin_user_page(). Please
  2877   * see Documentation/core-api/pin_user_pages.rst for further details.
  2878   *
  2879   * This is intended for Case 1 (DIO) in Documentation/core-api/pin_user_pages.rst. It
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  2880   * is NOT intended for Case 2 (RDMA: long-term pins).
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  2881   */
  2882  int pin_user_pages_fast(unsigned long start, int nr_pages,
  2883                          unsigned int gup_flags, struct page **pages)
  2884  {
  2885          /* FOLL_GET and FOLL_PIN are mutually exclusive. */
  2886          if (WARN_ON_ONCE(gup_flags & FOLL_GET))
  2887                  return -EINVAL;
  2888  
  2889          gup_flags |= FOLL_PIN;
  2890          return internal_get_user_pages_fast(start, nr_pages, gup_flags, pages);
  2891  }
  2892  EXPORT_SYMBOL_GPL(pin_user_pages_fast);

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
