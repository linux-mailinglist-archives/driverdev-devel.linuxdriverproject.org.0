Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA743D1212
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 17:07:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3532987913;
	Wed,  9 Oct 2019 15:07:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Aig5D5mR0lRI; Wed,  9 Oct 2019 15:07:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 755F2878F7;
	Wed,  9 Oct 2019 15:07:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FED91BF371
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3C95286999
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:07:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zKIQRTWuwLTD for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 15:07:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr810085.outbound.protection.outlook.com [40.107.81.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BF2AA86987
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 15:07:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LbVIfsHOrtPfk2JCz6MleKSljnLux3DA6DM8pv4HaSV9DChG1mowRlntBBHe6cgZybeHMdxyRHr7XFNBySw6vgw4jz8ighRIKyuntczxFeCLYp6k7vfDLpUZKdALeQTnTAlo1TOftQc9gH7Har4cJtPD6dS6Lk0DiglDc0y8v2TlQolZ8MWL+47gYLyofn+HUaERZwZtmskNGEP1IiG4RsmesfvfzQVTyfROafSHUE4pYcRhXRGJUUAkWuSh+oQc93plXr4QetqfvbBnoAyaNitP0ii2DcRuCHzA0EmWB+HsXjj+x5CzQQeE0ARFvyjKMU3JAg/bO//y3+ERkubsSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5qF702r/wnIT0t4vYDBFNzRSiIgkzqCY6Ea2f321IDU=;
 b=OLAil7nZbAyI30lg/YbIT3HvtmdjwvDdHl3r04s1HjBw8ZfXou5lHc3TtWzKbQKd4anc6OqvXfzxqSZblui/8e2is5MURkITsQ62DMsk+IUfrzl7Uf7axJ5AsMZa/wI1/rO2piuqMNVn6fPWQEJzcjqYElb5eUsXfSidS+XzTt2H6zCK8ukq2Ys6+ZiJF050ULJgX699t4Ek4IBdEpne+gudcabNUAXMGbbdLgqw1xnOoEeqJEL2hFGn5ld07Y3i1UMnFG6I/VlwhrwMpxcHLrn+auRAyehNNtPhQdOANhQ5+02KnCBhZXAeKR/4TdkAvans4FB40X6tx0yb4EZCQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5qF702r/wnIT0t4vYDBFNzRSiIgkzqCY6Ea2f321IDU=;
 b=qBxALiUXUB0UA28fTVUhtdlTENAv5Kp2YMsXTPOxahHFXSuCT0FPmFLDa/2JBUQcfTXrK9qvnfAcsTV5GOscx7RH+c3ZmPojKeGHVyXWKsZXGBcVZZqRmAqwXhBwV1F/cIZCprtHcSiAdBtULiy67XHwWSf/oA15ZW93Ls9fIBc=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.25; Wed, 9 Oct 2019 15:07:40 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 15:07:39 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [staging:staging-testing 57/111] drivers/staging/wfx/scan.c:207
 wfx_scan_work() warn: inconsistent returns 'sem:&wvif->scan.lock'.
Thread-Topic: [staging:staging-testing 57/111] drivers/staging/wfx/scan.c:207
 wfx_scan_work() warn: inconsistent returns
 'sem:&wvif->scan.lock'.
Thread-Index: AQHVfnSMjTlKOpv4pEu9QUYJk4ZwR6dSaaoA
Date: Wed, 9 Oct 2019 15:07:39 +0000
Message-ID: <18946799.ioaMs8cUNb@pc-42>
References: <20191009073803.GQ21515@kadam>
In-Reply-To: <20191009073803.GQ21515@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dade9297-9413-4898-20a1-08d74cca6d6d
x-ms-traffictypediagnostic: MN2PR11MB4448:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MN2PR11MB444881EA30467563901FF5B993950@MN2PR11MB4448.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:751;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(396003)(39850400004)(136003)(346002)(366004)(376002)(199004)(189003)(86362001)(7736002)(229853002)(6306002)(316002)(6486002)(4326008)(6436002)(305945005)(6246003)(6916009)(6512007)(9686003)(54906003)(66476007)(256004)(14444005)(66446008)(66946007)(64756008)(66556008)(71190400001)(91956017)(76116006)(966005)(8936002)(478600001)(71200400001)(102836004)(25786009)(14454004)(186003)(3846002)(26005)(99286004)(2906002)(6506007)(66574012)(6116002)(76176011)(8676002)(11346002)(486006)(5660300002)(476003)(81166006)(81156014)(33716001)(446003)(66066001)(39026011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4448;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gZdxXWmHpMhpS66PW/lNDGJkdgurlaAZv6VY+P64WaMZ57F+8VpuZa0OwR42cv//9HFrGUo183uZllY/HcgKiLtXOIaGyhijvGYClep6CD2kF8/Ka+Lgk+XbOaG+aAOBbRys8jLPKcyCSpBbZ3m9+YxfLgWwNWxJAjWiIFodBL+lIZqVQKt6sDomzk3L2fAREr6w9kdrPsSd3HCHGCvYfNNeteqj/65wUr31o16xZNi4hPAZz3pGLV4sBp3GX/oRV3QX/wBoCYjxBbLdD7Bc9OjAbOPp5CHuX+ngYtPerdKNemC7vNgDDeE06Hdqz/dSmHCP2Cb6vV892mNbPHjvT2mlcGkHUGDr3uve4EGFJdnL6qUpHi6udMnuQRXek4c+LXlA1liU2nbKLGxFHOTnffbD0+qfesTozGoHNw82orOhfyzkyoutRVrRjvRsxCxDJKjMiKsUyS099Eh8cmeX9A==
x-ms-exchange-transport-forked: True
Content-ID: <6FB2CB169640924CAB1EA2394C43F531@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dade9297-9413-4898-20a1-08d74cca6d6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 15:07:39.7098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0yBz2h76P4vZSylCrzmAi3AhTlL05qlf3EAqCTtTNJGASAKtlekKyw7WS4DANAq4oVt7myEfIUUFCP0Ws/KXNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4448
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "kbuild@01.org" <kbuild@01.org>, "kbuild-all@01.org" <kbuild-all@01.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wednesday 9 October 2019 09:38:31 CEST kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.gi=
t staging-testing
> head:   d49d1c76b96ebf39539e93d5ab7943a01ef70e4f
> commit: 1a61af0f8cbecd1610c6fc380d0fb00f57fd43f2 [57/111] staging: wfx: a=
llow to scan networks
> =

> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> =

> New smatch warnings:
> drivers/staging/wfx/scan.c:207 wfx_scan_work() warn: inconsistent returns=
 'sem:&wvif->scan.lock'.
>   Locked on:   line 201
>   Unlocked on: line 145
> =

> # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/comm=
it/?id=3D1a61af0f8cbecd1610c6fc380d0fb00f57fd43f2
> git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/gr=
egkh/staging.git
> git remote update staging
> git checkout 1a61af0f8cbecd1610c6fc380d0fb00f57fd43f2
> vim +207 drivers/staging/wfx/scan.c
> =

> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  116  void wfx_scan_work(st=
ruct work_struct *work)
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  117  {
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  118          struct wfx_vi=
f *wvif =3D container_of(work, struct wfx_vif, scan.work);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  119          struct ieee80=
211_channel **it;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  120          struct wfx_sc=
an_params scan =3D {
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  121                  .scan=
_req.scan_type.type =3D 0,    /* Foreground */
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  122          };
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  123          struct ieee80=
211_channel *first;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  124          int i;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  125
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  126          down(&wvif->s=
can.lock);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  127          mutex_lock(&w=
vif->wdev->conf_mutex);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  128
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  129          if (!wvif->sc=
an.req || wvif->scan.curr =3D=3D wvif->scan.end) {
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  130                  if (w=
vif->scan.output_power !=3D wvif->wdev->output_power)
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  131                       =
   hif_set_output_power(wvif, wvif->wdev->output_power * 10);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  132
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  133                  if (w=
vif->scan.status < 0)
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  134                       =
   dev_warn(wvif->wdev->dev, "scan failed\n");
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  135                  else =
if (wvif->scan.req)
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  136                       =
   dev_dbg(wvif->wdev->dev, "scan completed\n");
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  137                  else
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  138                       =
   dev_dbg(wvif->wdev->dev, "scan canceled\n");
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  139
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  140                  wvif-=
>scan.req =3D NULL;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  141                  wfx_t=
x_unlock(wvif->wdev);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  142                  mutex=
_unlock(&wvif->wdev->conf_mutex);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  143                  __iee=
e80211_scan_completed_compat(wvif->wdev->hw, wvif->scan.status ? 1 : 0);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  144                  up(&w=
vif->scan.lock);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  145                  retur=
n;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  146          }
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  147          first =3D *wv=
if->scan.curr;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  148
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  149          for (it =3D w=
vif->scan.curr + 1, i =3D 1;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  150               it !=3D =
wvif->scan.end && i < HIF_API_MAX_NB_CHANNELS;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  151               ++it, ++=
i) {
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  152                  if ((=
*it)->band !=3D first->band)
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  153                       =
   break;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  154                  if ((=
(*it)->flags ^ first->flags) &
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  155                       =
           IEEE80211_CHAN_NO_IR)
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  156                       =
   break;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  157                  if (!=
(first->flags & IEEE80211_CHAN_NO_IR) &&
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  158                      (=
*it)->max_power !=3D first->max_power)
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  159                       =
   break;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  160          }
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  161          scan.scan_req=
.band =3D first->band;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  162
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  163          if (wvif->sca=
n.req->no_cck)
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  164                  scan.=
scan_req.max_transmit_rate =3D API_RATE_INDEX_G_6MBPS;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  165          else
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  166                  scan.=
scan_req.max_transmit_rate =3D API_RATE_INDEX_B_1MBPS;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  167          scan.scan_req=
.num_of_probe_requests =3D
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  168                  (firs=
t->flags & IEEE80211_CHAN_NO_IR) ? 0 : 2;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  169          scan.scan_req=
.num_of_ssi_ds =3D wvif->scan.n_ssids;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  170          scan.ssids =
=3D &wvif->scan.ssids[0];
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  171          scan.scan_req=
.num_of_channels =3D it - wvif->scan.curr;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  172          scan.scan_req=
.probe_delay =3D 100;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  173
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  174          scan.ch =3D k=
calloc(scan.scan_req.num_of_channels, sizeof(u8), GFP_KERNEL);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  175
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  176          if (!scan.ch)=
 {
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  177                  wvif-=
>scan.status =3D -ENOMEM;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  178                  goto =
fail;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  179          }
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  180          for (i =3D 0;=
 i < scan.scan_req.num_of_channels; ++i)
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  181                  scan.=
ch[i] =3D wvif->scan.curr[i]->hw_value;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  182
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  183          if (wvif->sca=
n.curr[0]->flags & IEEE80211_CHAN_NO_IR) {
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  184                  scan.=
scan_req.min_channel_time =3D 50;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  185                  scan.=
scan_req.max_channel_time =3D 150;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  186          } else {
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  187                  scan.=
scan_req.min_channel_time =3D 10;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  188                  scan.=
scan_req.max_channel_time =3D 50;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  189          }
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  190          if (!(first->=
flags & IEEE80211_CHAN_NO_IR) &&
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  191              wvif->sca=
n.output_power !=3D first->max_power) {
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  192                  wvif-=
>scan.output_power =3D first->max_power;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  193                  hif_s=
et_output_power(wvif, wvif->scan.output_power * 10);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  194          }
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  195          wvif->scan.st=
atus =3D wfx_scan_start(wvif, &scan);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  196          kfree(scan.ch=
);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  197          if (wvif->sca=
n.status)
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  198                  goto =
fail;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  199          wvif->scan.cu=
rr =3D it;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  200          mutex_unlock(=
&wvif->wdev->conf_mutex);
> =

> Smatch says that we should have an:  up(&wvif->scan.lock);.  That seems
> reasonable, but I'm not positive that it's correct.
> =

> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  201          return;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  202
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  203  fail:
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  204          wvif->scan.cu=
rr =3D wvif->scan.end;
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  205          mutex_unlock(=
&wvif->wdev->conf_mutex);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  206          up(&wvif->sca=
n.lock);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19 @207          schedule_work=
(&wvif->scan.work);
> 1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  208  }

wvif->scan.lock is unlocked when scan finish or timeout (in
wfx_scan_complete()). So, the current behavior works (even if it
could/should be written more cleanly).

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
