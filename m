Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 25219D244F
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 10:55:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 09CDE245E3;
	Thu, 10 Oct 2019 08:55:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1bUUgmHGWYoz; Thu, 10 Oct 2019 08:55:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D2E9320411;
	Thu, 10 Oct 2019 08:55:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A15141BF2B8
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 08:55:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 534FE203FD
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 08:55:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fZuveMbMYkbG for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 08:55:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 7ADF0203F0
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 08:55:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7455218AC;
 Thu, 10 Oct 2019 08:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570697727;
 bh=I1yf3Z0INK3fIFzvQT2xsHL5DpkSo0F6d7AgDhnamHU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eMsmYgNWfs6pbtVJo4PeD5EAg/mCmwpZxp6uRDnQxga+Av47VZjWXWtyRu20Jrrvm
 897VM6xSLfcZkKfk7QTuJ+/+B4yW5mpqOkNgfou6TKTmiUHxNw2WzMuaIQ/JTBoO7j
 WTMqrLGp7hyEp9vOgVRvVPU4x2WvxVsGbOQwIoBU=
Date: Thu, 10 Oct 2019 10:42:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [staging:staging-testing 57/111] drivers/staging/wfx/scan.c:207
 wfx_scan_work() warn: inconsistent returns 'sem:&wvif->scan.lock'.
Message-ID: <20191010084247.GA365617@kroah.com>
References: <20191009073803.GQ21515@kadam>
 <18946799.ioaMs8cUNb@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18946799.ioaMs8cUNb@pc-42>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
 "kbuild@01.org" <kbuild@01.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 "kbuild-all@01.org" <kbuild-all@01.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 09, 2019 at 03:07:39PM +0000, Jerome Pouiller wrote:
> On Wednesday 9 October 2019 09:38:31 CEST kbuild test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.=
git staging-testing
> > head:   d49d1c76b96ebf39539e93d5ab7943a01ef70e4f
> > commit: 1a61af0f8cbecd1610c6fc380d0fb00f57fd43f2 [57/111] staging: wfx:=
 allow to scan networks
> > =

> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > =

> > New smatch warnings:
> > drivers/staging/wfx/scan.c:207 wfx_scan_work() warn: inconsistent retur=
ns 'sem:&wvif->scan.lock'.
> >   Locked on:   line 201
> >   Unlocked on: line 145
> > =

> > # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/co=
mmit/?id=3D1a61af0f8cbecd1610c6fc380d0fb00f57fd43f2
> > git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/=
gregkh/staging.git
> > git remote update staging
> > git checkout 1a61af0f8cbecd1610c6fc380d0fb00f57fd43f2
> > vim +207 drivers/staging/wfx/scan.c
> > =

> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  116  void wfx_scan_work(=
struct work_struct *work)
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  117  {
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  118          struct wfx_=
vif *wvif =3D container_of(work, struct wfx_vif, scan.work);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  119          struct ieee=
80211_channel **it;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  120          struct wfx_=
scan_params scan =3D {
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  121                  .sc=
an_req.scan_type.type =3D 0,    /* Foreground */
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  122          };
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  123          struct ieee=
80211_channel *first;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  124          int i;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  125
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  126          down(&wvif-=
>scan.lock);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  127          mutex_lock(=
&wvif->wdev->conf_mutex);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  128
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  129          if (!wvif->=
scan.req || wvif->scan.curr =3D=3D wvif->scan.end) {
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  130                  if =
(wvif->scan.output_power !=3D wvif->wdev->output_power)
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  131                     =
     hif_set_output_power(wvif, wvif->wdev->output_power * 10);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  132
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  133                  if =
(wvif->scan.status < 0)
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  134                     =
     dev_warn(wvif->wdev->dev, "scan failed\n");
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  135                  els=
e if (wvif->scan.req)
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  136                     =
     dev_dbg(wvif->wdev->dev, "scan completed\n");
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  137                  else
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  138                     =
     dev_dbg(wvif->wdev->dev, "scan canceled\n");
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  139
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  140                  wvi=
f->scan.req =3D NULL;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  141                  wfx=
_tx_unlock(wvif->wdev);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  142                  mut=
ex_unlock(&wvif->wdev->conf_mutex);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  143                  __i=
eee80211_scan_completed_compat(wvif->wdev->hw, wvif->scan.status ? 1 : 0);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  144                  up(=
&wvif->scan.lock);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  145                  ret=
urn;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  146          }
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  147          first =3D *=
wvif->scan.curr;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  148
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  149          for (it =3D=
 wvif->scan.curr + 1, i =3D 1;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  150               it !=
=3D wvif->scan.end && i < HIF_API_MAX_NB_CHANNELS;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  151               ++it, =
++i) {
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  152                  if =
((*it)->band !=3D first->band)
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  153                     =
     break;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  154                  if =
(((*it)->flags ^ first->flags) &
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  155                     =
             IEEE80211_CHAN_NO_IR)
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  156                     =
     break;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  157                  if =
(!(first->flags & IEEE80211_CHAN_NO_IR) &&
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  158                     =
 (*it)->max_power !=3D first->max_power)
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  159                     =
     break;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  160          }
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  161          scan.scan_r=
eq.band =3D first->band;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  162
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  163          if (wvif->s=
can.req->no_cck)
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  164                  sca=
n.scan_req.max_transmit_rate =3D API_RATE_INDEX_G_6MBPS;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  165          else
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  166                  sca=
n.scan_req.max_transmit_rate =3D API_RATE_INDEX_B_1MBPS;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  167          scan.scan_r=
eq.num_of_probe_requests =3D
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  168                  (fi=
rst->flags & IEEE80211_CHAN_NO_IR) ? 0 : 2;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  169          scan.scan_r=
eq.num_of_ssi_ds =3D wvif->scan.n_ssids;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  170          scan.ssids =
=3D &wvif->scan.ssids[0];
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  171          scan.scan_r=
eq.num_of_channels =3D it - wvif->scan.curr;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  172          scan.scan_r=
eq.probe_delay =3D 100;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  173
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  174          scan.ch =3D=
 kcalloc(scan.scan_req.num_of_channels, sizeof(u8), GFP_KERNEL);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  175
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  176          if (!scan.c=
h) {
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  177                  wvi=
f->scan.status =3D -ENOMEM;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  178                  got=
o fail;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  179          }
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  180          for (i =3D =
0; i < scan.scan_req.num_of_channels; ++i)
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  181                  sca=
n.ch[i] =3D wvif->scan.curr[i]->hw_value;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  182
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  183          if (wvif->s=
can.curr[0]->flags & IEEE80211_CHAN_NO_IR) {
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  184                  sca=
n.scan_req.min_channel_time =3D 50;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  185                  sca=
n.scan_req.max_channel_time =3D 150;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  186          } else {
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  187                  sca=
n.scan_req.min_channel_time =3D 10;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  188                  sca=
n.scan_req.max_channel_time =3D 50;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  189          }
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  190          if (!(first=
->flags & IEEE80211_CHAN_NO_IR) &&
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  191              wvif->s=
can.output_power !=3D first->max_power) {
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  192                  wvi=
f->scan.output_power =3D first->max_power;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  193                  hif=
_set_output_power(wvif, wvif->scan.output_power * 10);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  194          }
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  195          wvif->scan.=
status =3D wfx_scan_start(wvif, &scan);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  196          kfree(scan.=
ch);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  197          if (wvif->s=
can.status)
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  198                  got=
o fail;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  199          wvif->scan.=
curr =3D it;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  200          mutex_unloc=
k(&wvif->wdev->conf_mutex);
> > =

> > Smatch says that we should have an:  up(&wvif->scan.lock);.  That seems
> > reasonable, but I'm not positive that it's correct.
> > =

> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  201          return;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  202
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  203  fail:
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  204          wvif->scan.=
curr =3D wvif->scan.end;
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  205          mutex_unloc=
k(&wvif->wdev->conf_mutex);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  206          up(&wvif->s=
can.lock);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19 @207          schedule_wo=
rk(&wvif->scan.work);
> > 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  208  }
> =

> wvif->scan.lock is unlocked when scan finish or timeout (in
> wfx_scan_complete()). So, the current behavior works (even if it
> could/should be written more cleanly).

Yes, please rewrite this to be more "obvious" otherwise you are going to
have to be answering this question for the next 10+ years...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
