Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A6AA5EF5
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 03:49:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BCA088164;
	Tue,  3 Sep 2019 01:49:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WDlCA5NSOhEm; Tue,  3 Sep 2019 01:49:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2B8087ED0;
	Tue,  3 Sep 2019 01:49:50 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D53061BF2AA
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 01:49:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CB59186A7C
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 01:49:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E2rIEeSuQAo2
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 01:49:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9A79D86146
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 01:49:47 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id A8EF79BA;
 Mon,  2 Sep 2019 21:49:46 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 02 Sep 2019 21:49:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tobin.cc; h=date
 :from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=BiYTz2VJWMi/CVlMWETMVVR6COQ
 DnRVFTKGHt3q+3uU=; b=ArKOPAxhrYAHSr8RXdtsExHRqJRrPxY4I4H8C7dBOy2
 wlmKKEsA/GuSKy8jV+BPgq3Zdyyvl2Kqm9ChGG/Ymqn7d5iTXlMQ/48ZXCs0hQPL
 z6C1F9X4znfR96SRtRnd4DAfWdMLEhycWvh/Hssbxlz4EvVvuu3PArIHOXznzTq7
 FP7yRcHZVkq5tm5oG7B+jadRrMMoJkGKZufxD26/Q5k6ACq+9nGB3ZPEqGIjoA1C
 43uggfjG9M8D5fKunbhWt9E1BSnSthW4i8K9dOWzBPHDlPoDFWZCerminS/0p2tG
 /YAhXhP3aiY2sPAv3wAiXeGoo6pc0a9qHdM8/SmzLCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=BiYTz2
 VJWMi/CVlMWETMVVR6COQDnRVFTKGHt3q+3uU=; b=N/n3x4+juoswd8gz42nFQT
 B0RoUuTjYD50/tiokFxRu2KW0ocpYhhXEjQd6Gvuca6/J4q1rdb4bWB4M/3mYeyW
 k+nt5LLQEpMxAcRc1RIo1RpQcV/W8vF1dhjUU1Wch9MbqGyHr9VQr2ZGAVgZmel7
 ep/R+LLzIrtXqa577I1YaFFbgc5OxQPGPX27pxKs9tYAB7CuSf3V/WpPMq3Ktxxp
 tciOOF4SiDnhJHMlIdRuvlBo49+ktzRUPIRdpyw5IYzmlLAnKAyYREIJMOWEqCzl
 nPXKRweTqAzC3OmohIu6L+z2hvOaARD/2EDeY8NpCzqQllW3hTw+8jAIN8m4llAg
 ==
X-ME-Sender: <xms:ucZtXbgEItPCjPlz2j4GJQCXCgd-l-kZBtrxsrOeEfzXJASAfAGrUA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejuddgheduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 gfrhhlucfvnfffucdlfedtmdenucfjughrpeffhffvuffkfhggtggujgfofgesghdtreer
 oferjeenucfhrhhomhepfdfvohgsihhnucevrdcujfgrrhguihhnghdfuceomhgvsehtoh
 gsihhnrdgttgeqnecukfhppeduvdegrdduledrfedurdegnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmvgesthhosghinhdrtggtnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:ucZtXRs15jyzwwokU1XlYufxskioik02Xy7NFpDxMbcvny1jaibdGw>
 <xmx:ucZtXaYfACBx3J1sSujfn7dZGQFXzywxwEynHd9agGOf3KflX1gZMQ>
 <xmx:ucZtXQW8he2fAoTha_-7opR3_h_Kjtlyj-6BJhj9ePEpYqdAD2FGuA>
 <xmx:usZtXZz--6ICbgxn6JMgXi1qlG0mJLbO1GAJcQF9cmoovfds3N_GBw>
Received: from localhost (unknown [124.19.31.4])
 by mail.messagingengine.com (Postfix) with ESMTPA id 287358005C;
 Mon,  2 Sep 2019 21:49:44 -0400 (EDT)
Date: Tue, 3 Sep 2019 11:49:42 +1000
From: "Tobin C. Harding" <me@tobin.cc>
To: Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
Subject: Re: [OSSNA] Intro to kernel hacking tutorial
Message-ID: <20190903014942.GA30045@ares>
References: <20190705025055.GA7037@ares> <20190719093658.GF3111@kadam>
 <20190722092923.GB22763@ares>
 <CAPTh4OtcwP_B7gY2HLDQvihuubCKbTbVgnF9LkKaFg=pqSs64w@mail.gmail.com>
 <20190902015137.GB14611@ares>
 <CADxRZqyBgDEiZaK5At2RoCHPNquRA6OWvFg2SU3TZ9hsqEs8rg@mail.gmail.com>
 <490137.1567433334@turing-police>
MIME-Version: 1.0
In-Reply-To: <490137.1567433334@turing-police>
X-Mailer: Mutt 1.9.4 (2018-02-28)
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: Kernelnewbies <kernelnewbies@kernelnewbies.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org, Anatoly Pugachev <matorola@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: multipart/mixed; boundary="===============0559031363774328310=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0559031363774328310==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZGiS0Q5IWpPtfppv"
Content-Disposition: inline


--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 02, 2019 at 10:08:54AM -0400, Valdis Kl=C4=93tnieks wrote:
> On Mon, 02 Sep 2019 15:42:19 +0300, Anatoly Pugachev said:
>=20
> > is it intentionally that you use
> >
> > yes "" | make oldconfig
> >
> > instead of
> >
> > make olddefconfig
>=20
> They do something different.  'olddefconfig' just takes the platform or
> architecture defconfig and updates it for any new CONFIG_* variables added
> since the last time the defconfig was updated in the tree.
>=20
> yes "" | make oldconfig  does the same updating for new CONFIG_* variable=
s, but
> starts with the most recent .config - which produces wildly different res=
ults
> if the .config had previously been minimized by 'make localmodconfig' or =
other
> similar techniques.

Thanks Valdis, you're the man!


       Tobin



--ZGiS0Q5IWpPtfppv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEc/+jpUAIMPwyplf8QL+eTCadZgcFAl1txqwACgkQQL+eTCad
Zgc4BQ//aetUgu6rxrNCtgSyWTkVetayRjWJp4BiJ2xOTBJhDHep3el+iugZ0Lev
6w6XlN3IMyewoAOYk73njdIiqfYdc+YyglbSB5Tx3/PKHhkyEVHWbIfYnGY30Jas
EZhpo9e3OccHbnUT/yJ0HpmScA6KIxBt3iNrxSfs8l8lBshPpllDBIfLkim6gOFy
yQT3Fs14VcQcgAS+VjWi+EkfPfKLaiw5pA4ksojrlnKqumvDgwTQCTVQQiQFPmdc
HqugREvoe5sTbSOb9AosNBx4pBgBM5zyejFjSMNP4RKrrcIM+Y0VvFTFgoWRxqr7
4l6Brw0EcBiP1pk4DupsB/YXDVK9Hn0qhMHShiURlBbpea1hPgmbfyietlvCZaIJ
hIjUzVwLRxYaatr5IZR/+XuD0Uu0XSiD5QOkm29wfDUfMFEhXzymlC6fmL9g6umN
OSaNQi9+bW+/7/zWK4sJP206QvZwsvuhC+N8WPjPZYdaNm0uQ1LadMs4wmlZAQ8c
7EtD89ku8e2ruUG1MqKr3EgTgiKVjEzv41jrxWUFJRxUX9+Ajl1EyYwsChS0HZgQ
zjvWN1wvNFscIrkhNp/lgYzEdbuda0f9Iits2AzkYtn5h72AlxKVWvlnUZBASae+
bYAgitL0FJFxV4sYqR9LoWijd2KrWd8d03RpzzlhykbkoTxng+w=
=ygEL
-----END PGP SIGNATURE-----

--ZGiS0Q5IWpPtfppv--

--===============0559031363774328310==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0559031363774328310==--
